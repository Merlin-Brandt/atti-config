#include <filesystem>
#include <cstdlib>

#include <GLFW/glfw3.h>
#include "nanogui_prelude"

#include "utils.hpp"
#include "constants.hpp"
#include "path.hpp"

#include <cstdlib>
#include <ctime>  

using namespace std;
using namespace nanogui;
template <typename T>
using ngref = nanogui::ref<T>;

TextBox *entry(Widget *window, string const &label, string const &def)
{
    new Label(window, label);
    TextBox *textbox = new TextBox(window, def);
    textbox->set_spinnable(true);
    textbox->set_editable(true);
    textbox->set_value(def);
    return textbox;
}

template <typename T>
IntBox<T> *number_entry(Widget *window, string const &label, T const &def)
{
    new Label(window, label);
    IntBox<T> *textbox = new IntBox<T>(window, def);
    textbox->set_spinnable(true);
    textbox->set_editable(true);
    textbox->set_value(def);
    return textbox;
}

IntBox<int> *unit_entry(Widget *window, string const &label, int s, char const *unit)
{
    IntBox<int> *textbox = number_entry<int>(window, label, s);
    textbox->set_units(unit);
    return textbox;
}

IntBox<int> *secondi(Widget *parent, string const &label, int s)
{
    return unit_entry(parent, label, s, "secondi");
}

IntBox<int> *minuti(Widget *parent, string const &label, int s)
{
    return unit_entry(parent, label, s, "minuti");
}

Widget *next_tab(TabWidget *tabs, string const &title)
{
    Widget *tab = new Widget(tabs);
    tab->set_layout(new GroupLayout());
    tabs->append_tab(title, tab);
    return tab;
}


class ExampleApplication : public Screen {
public:
    ExampleApplication() : Screen(Vector2i(1024, 768), "NanoGUI Test") {
        inc_ref();
        
        srand(time(NULL));

        string const config_filename = config_path() + "/config.txt";
        std::cout << config_filename << std::endl;

        // stores the line numbers in new_diodati_titles.txt of the titles that shall
        // not be chosen in the following game, as these titles were already played.
        set<int> used_titles;
        {
            std::ifstream config_in(config_filename);
            int used_titles_num = get_line_int(config_in);
            for (int i = 0; i < used_titles_num; ++i)
            {
                used_titles.insert(get_line_int(config_in));
            }
        }

        Window *window;
        Button *b;
        
        window = new Window(this, "Configuration");
        window->set_position(Vector2i(15, 15));
        window->set_layout(new GroupLayout());
        TabWidget *tabs = window->add<TabWidget>();
        tabs->set_callback([=] (int id) {tabs->set_selected_id(id);});

        Widget *tab = next_tab(tabs, "Giocatori");

        struct {
            TextBox *nome, *notizia;  
        } giocatori[3];
        for (int i = 0; i < 3; ++i)
        {
            new Label(tab, "Giocatore " + std::to_string(i));
            giocatori[i].nome = new TextBox(tab, "Nome");
            giocatori[i].nome->set_editable(true);
            giocatori[i].notizia = new TextBox(tab, "Notizia");
            giocatori[i].notizia->set_editable(true);
        }

        tab = next_tab(tabs, "Tempi");

        IntBox<int> *tempo_iniziale = minuti(tab, "Tempo iniziale", 15);

        IntBox<int> *tempo_manche[3];
        new Label(tab, "Tempi aggiunti ai giocatori dopo avere risolto ...");
        for (int i = 0; i < 3; i++)
        {
            tempo_manche[i] = minuti(tab, "... Manche " + std::to_string(i), 15);
        }

        struct {
            IntBox<int> *aggiunto, *sottrato;
        } tempo_sfida[2];
        new Label(tab, "Tempi aggiunti ai giocatori dopo sfida");
        for (int i = 0; i < 2; ++i)
        {
            tempo_sfida[i].aggiunto = minuti(tab, "Manche " + std::to_string(i), 1);
        }
        new Label(tab, "Tempi sottrati dei giocatori dopo sfida");
        for (int i = 0; i < 2; ++i)
        {
            tempo_sfida[i].sottrato = minuti(tab, "Manche " + std::to_string(i), i == 0 ? 0 : 1);
        }

        tab = next_tab(tabs, "Tempi");

        IntBox<int> *tempo_tentazione = secondi(tab, "Tempo sottrato dopo tentazione", 2);
        IntBox<int> *tempo_giusto = secondi(tab, "Tempo aggiunto dopo avuto indovinato giustamente", 5);
        IntBox<int> *tempo_errore = secondi(tab, "Tempo sottrato dopo errore", 5);
        IntBox<int> *tempo_errore_risolvi = secondi(tab, "Tempo sottrato dopo errore dopo risolvi", 1);
        IntBox<int> *tempo_slide = secondi(tab, "Tempo slide", 4);
        IntBox<int> *tempo_suspance = secondi(tab, "Tempo suspance", 7);
        IntBox<int> *tempo_alert = minuti(tab, "Tempo alert", 1);
        IntBox<int> *tempo_azione = secondi(tab, "Tempo azione", 5);
        IntBox<int> *tempo_pausa_azione = secondi(tab, "Tempo pausa azione", 5);

        tab = next_tab(tabs, "Manche 1");

        IntBox<int> *title_length_min = number_entry(tab, "Lunghezza minimale della frase", 30);
        IntBox<int> *title_length_max = number_entry(tab, "Lunghezza massimale della frase", 98);
        //IntBox<int> *title_offset = number_entry(tab, "Posizione della frase nella tabella", 0);
        
        Widget *board = new Widget(tab);
        board->set_layout(new GridLayout(Orientation::Vertical, BOARD_H));
        TextBox *board_chars[BOARD_W][BOARD_H];
        for (int i = 0; i < BOARD_W; ++i)
        for (int j = 0; j < BOARD_H; ++j)
        {
            board_chars[i][j] = new TextBox(board, " ");
            board_chars[i][j]->set_editable(true);
            board_chars[i][j]->set_font_size(14);
        }

        int const MARGIN = 1;
        int const BOARD_FILL_W = BOARD_W - MARGIN*2;
        int const BOARD_FILL_H = BOARD_H - MARGIN*2;

        b = new Button(tab, "Caricare la frase");
        b->set_callback([=] {
            for (int i = 0; i < BOARD_W; ++i)
            for (int j = 0; j < BOARD_H; ++j)
                board_chars[i][j]->set_value(" ");

            vector<string> titles = get_lines(path() + "res/new_diodati_titles.txt");
            set<int> all_titles = range_set(0, titles.size());
            set<int> available_titles = sstd::set_difference(all_titles, used_titles);
            set<int> invalid_titles;
            for (int i : available_titles)
            {
                if (titles[i].length() < title_length_min->value() || titles[i].length() > title_length_max->value())
                    invalid_titles.insert(i);
            }
            available_titles = sstd::set_difference(available_titles, invalid_titles);
            
            string title = titles[copy_random(available_titles)];
            title.push_back(' ');
            int i = MARGIN;
            int j = MARGIN;
            std::cout << "begin\n";
            while (title.length())
            {
                int wordlen = title.find(" ");
                if (wordlen != wstring::npos)
                    if (i + wordlen > BOARD_W-MARGIN) i = MARGIN, ++j;
                if (wordlen == 0 && i == 0) title = title.substr(1); // no need to insert spaces at beginning of a row
                board_chars[i][j]->set_value(title.substr(0, 1));
                ++i;
                if (i >= BOARD_W-MARGIN) i = MARGIN, ++j;
                title = title.length() ? title.substr(1) : title;
            }
        });


        tab = next_tab(tabs, "Save configuration");

        b = new Button(tab, "Save configuration");
        b->set_callback([=] { 

            // check if entered times can be displayed with resources
            // ensure(resource available for tempo_giusto)
            // ensure(resource available for tempo_errore)
            for (IntBox<int> *box : {
                tempo_giusto,
                tempo_errore,
            }) {
                int val = box->value();
                string sign = val >= 0 ? "+" : "-";
                string absval = to_string(abs(val));
                char unit = box->units()[0];
                if (!std::filesystem::exists(path() + "res/img/time/" + sign + absval + unit + ".png"))
                {
                    string description;
                    if (box == tempo_giusto)
                        description = "Tempo aggiunto dopo avuto indovinato giustamente";
                    else if (box == tempo_errore)
                        description = "Tempo sottrato dopo errore";
                    else
                        description = "value";
                    new MessageDialog(this, MessageDialog::Type::Information, "Error", string() 
                        + "No graphics available for time setting: " + description + " = " + to_string(val));
                    return;
                }
            }

            std::ofstream out(config_filename);
            out << used_titles.size() << std::endl;
            for (int i : used_titles)
            {
                out << i << std::endl;
            }
            for (int i = 0; i < 3; ++i)
            {
                out << giocatori[i].nome->value() << std::endl << giocatori[i].notizia->value() << std::endl;
            }
            for (IntBox<int> *box : {
                tempo_iniziale, 
                tempo_manche[0],
                tempo_manche[1],
                tempo_manche[2],
                tempo_sfida[0].aggiunto, 
                tempo_sfida[0].sottrato, 
                tempo_sfida[1].aggiunto, 
                tempo_sfida[1].sottrato,
                tempo_tentazione, 
                tempo_giusto,
                tempo_errore,
                tempo_errore_risolvi, 
                tempo_slide, 
                tempo_suspance, 
                tempo_alert, 
                tempo_azione, 
                tempo_pausa_azione
            }) {
                int factor = 1;
                if (box->units() == "secondi")
                    factor = 1;
                else if (box->units() == "minuti")
                    factor = 60;
                else
                    std::cout << "Error invalid time unit in nanogui widget" << std::endl;
                out << box->value() * factor << std::endl;
            }
            for (int j = 0; j < BOARD_H; ++j)
            for (int i = 0; i < BOARD_W; ++i)
            {
                out << board_chars[i][j]->value()[0] << std::endl;
            }
        });

        tab = next_tab(tabs, "");
        tab->set_visible(false);

        new Label(tab, "Toggle buttons", "sans-bold");
        b = new Button(tab, "Toggle me");
        b->set_flags(Button::ToggleButton);
        b->set_change_callback([](bool state) { std::cout << "Toggle button state: " << state << std::endl; });

        new Label(tab, "Radio buttons", "sans-bold");
        b = new Button(tab, "Radio button 1");
        b->set_flags(Button::RadioButton);
        b = new Button(tab, "Radio button 2");
        b->set_flags(Button::RadioButton);

        new Label(tab, "Popup buttons", "sans-bold");
        PopupButton *popup_btn = new PopupButton(tab, "Popup", FA_FLASK);
        Popup *popup = popup_btn->popup();
        popup->set_layout(new GroupLayout());
        new Label(popup, "Arbitrary widgets can be placed here");
        new CheckBox(popup, "A check box");
        // popup right
        popup_btn = new PopupButton(popup, "Recursive popup", FA_CHART_PIE);
        Popup *popup_right = popup_btn->popup();
        popup_right->set_layout(new GroupLayout());
        new CheckBox(popup_right, "Another check box");
        // popup left
        popup_btn = new PopupButton(popup, "Recursive popup", FA_DNA);
        popup_btn->set_side(Popup::Side::Left);
        Popup *popup_left = popup_btn->popup();
        popup_left->set_layout(new GroupLayout());
        new CheckBox(popup_left, "Another check box");

        new Label(tab, "Message dialog", "sans-bold");
        Widget *tools = new Widget(tab);
        tools->set_layout(new BoxLayout(Orientation::Horizontal,
                                       Alignment::Middle, 0, 6));
        b = new Button(tools, "Info");
        b->set_callback([&] {
            auto dlg = new MessageDialog(this, MessageDialog::Type::Information, "Title", "This is an information message");
            dlg->set_callback([](int result) { std::cout << "Dialog result: " << result << std::endl; });
        });
        b = new Button(tools, "Warn");
        b->set_callback([&] {
            auto dlg = new MessageDialog(this, MessageDialog::Type::Warning, "Title", "This is a warning message");
            dlg->set_callback([](int result) { std::cout << "Dialog result: " << result << std::endl; });
        });
        b = new Button(tools, "Ask");
        b->set_callback([&] {
            auto dlg = new MessageDialog(this, MessageDialog::Type::Warning, "Title", "This is a question message", "Yes", "No", true);
            dlg->set_callback([](int result) { std::cout << "Dialog result: " << result << std::endl; });
        });

        new Label(tab, "File dialog", "sans-bold");
        tools = new Widget(tab);
        tools->set_layout(new BoxLayout(Orientation::Horizontal,
                                       Alignment::Middle, 0, 6));
        b = new Button(tools, "Open");
        b->set_callback([&] {
            std::cout << "File dialog result: " << file_dialog(
                    { {"png", "Portable Network Graphics"}, {"txt", "Text file"} }, false) << std::endl;
        });
        b = new Button(tools, "Save");
        b->set_callback([&] {
            std::cout << "File dialog result: " << file_dialog(
                    { {"png", "Portable Network Graphics"}, {"txt", "Text file"} }, true) << std::endl;
        });

        new Label(tab, "Combo box", "sans-bold");
        new ComboBox(tab, { "Combo box item 1", "Combo box item 2", "Combo box item 3"});
        new Label(tab, "Check box", "sans-bold");
        CheckBox *cb = new CheckBox(tab, "Flag 1",
            [](bool state) { std::cout << "Check box 1 state: " << state << std::endl; }
        );
        cb->set_checked(true);
        cb = new CheckBox(tab, "Flag 2",
            [](bool state) { std::cout << "Check box 2 state: " << state << std::endl; }
        );
        new Label(tab, "Progress bar", "sans-bold");
        m_progress = new ProgressBar(tab);

        new Label(tab, "Slider and text box", "sans-bold");

        Widget *panel = new Widget(tab);
        panel->set_layout(new BoxLayout(Orientation::Horizontal,
                                       Alignment::Middle, 0, 20));

        Slider *slider = new Slider(panel);
        slider->set_value(0.5f);
        slider->set_fixed_width(80);

        TextBox *text_box = new TextBox(panel);
        text_box->set_fixed_size(Vector2i(60, 25));
        text_box->set_value("50");
        text_box->set_units("%");
        slider->set_callback([text_box](float value) {
            text_box->set_value(std::to_string((int) (value * 100)));
        });
        slider->set_final_callback([&](float value) {
            std::cout << "Final slider value: " << (int) (value * 100) << std::endl;
        });
        text_box->set_fixed_size(Vector2i(60,25));
        text_box->set_font_size(20);
        text_box->set_alignment(TextBox::Alignment::Right);

        perform_layout();
    }

    virtual bool keyboard_event(int key, int scancode, int action, int modifiers) {
        if (Screen::keyboard_event(key, scancode, action, modifiers))
            return true;
        if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS) {
            set_visible(false);
            return true;
        }
        return false;
    }

    virtual void draw(NVGcontext *ctx) {
        /* Animate the scrollbar */
        m_progress->set_value(std::fmod((float) glfwGetTime() / 10, 1.0f));

        /* Draw the user interface */
        Screen::draw(ctx);
    }
private:
    ProgressBar *m_progress;
    ngref<Shader> m_shader;
    ngref<RenderPass> m_render_pass;

    using ImageHolder = std::unique_ptr<uint8_t[], void(*)(void*)>;
    std::vector<std::pair<ngref<Texture>, ImageHolder>> m_images;
    int m_current_image;
};

int main(int /* argc */, char ** /* argv */) {
    try {
        nanogui::init();

        /* scoped variables */ {
            ngref<ExampleApplication> app = new ExampleApplication();
            app->dec_ref();
            app->draw_all();
            app->set_visible(true);
            nanogui::mainloop(1 / 60.f * 1000);
        }

        nanogui::shutdown();
    } catch (const std::exception &e) {
        std::string error_msg = std::string("Caught a fatal error: ") + std::string(e.what());
        #if defined(_WIN32)
            MessageBoxA(nullptr, error_msg.c_str(), NULL, MB_ICONERROR | MB_OK);
        #else
            std::cerr << error_msg << std::endl;
        #endif
        return -1;
    } catch (...) {
        std::cerr << "Caught an unknown error!" << std::endl;
    }

    return 0;
}

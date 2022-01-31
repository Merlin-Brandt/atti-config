/*
    src/example1.cpp -- C++ version of an example application that shows
    how to use the various widget classes. For a Python implementation, see
    '../python/example1.py'.

    NanoGUI was developed by Wenzel Jakob <wenzel.jakob@epfl.ch>.
    The widget drawing code is based on the NanoVG demo application
    by Mikko Mononen.

    All rights reserved. Use of this source code is governed by a
    BSD-style license that can be found in the LICENSE.txt file.
*/

#include <GLFW/glfw3.h>
#include <nanogui/screen.h>
#include <nanogui/window.h>
#include <nanogui/layout.h>
#include <nanogui/label.h>
#include <nanogui/checkbox.h>
#include <nanogui/button.h>
#include <nanogui/toolbutton.h>
#include <nanogui/popupbutton.h>
#include <nanogui/combobox.h>
#include <nanogui/progressbar.h>
#include <nanogui/icons.h>
#include <nanogui/messagedialog.h>
#include <nanogui/textbox.h>
#include <nanogui/slider.h>
#include <nanogui/imagepanel.h>
#include <nanogui/imageview.h>
#include <nanogui/vscrollpanel.h>
#include <nanogui/colorwheel.h>
#include <nanogui/colorpicker.h>
#include <nanogui/graph.h>
#include <nanogui/tabwidget.h>
#include <nanogui/texture.h>
#include <nanogui/shader.h>
#include <nanogui/renderpass.h>
#include <iostream>
#include <memory>
#include <string>
#include <fstream>

using namespace nanogui;

TextBox *minuti(Widget *window, int s)
{
    TextBox *textbox = new TextBox(window, std::to_string(s));
    textbox->set_spinnable(true);
    textbox->set_editable(true);
    textbox->set_default_value(std::to_string(s));
    textbox->set_units("Minuti");
    return textbox;
}

TextBox *unit_entry(Widget *window, char const *label, int s, char const *unit)
{
    new Label(window, label);
    TextBox *textbox = new TextBox(window, std::to_string(s));
    textbox->set_spinnable(true);
    textbox->set_editable(true);
    textbox->set_default_value(std::to_string(s));
    textbox->set_units(unit);
    return textbox;
}

TextBox *secondi(Widget *parent, char const *label, int s)
{
    return unit_entry(parent, label, s, "secondi");
}

TextBox *minuti(Widget *parent, char const *label, int s)
{
    return unit_entry(parent, label, s, "minuti");
}

Widget *next_tab(TabWidget *tabs, char const *title)
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
        Window *window;
        
        window = new Window(this, "Configuration");
        window->set_position(Vector2i(15, 15));
        window->set_layout(new GroupLayout());
        TabWidget *tabs = window->add<TabWidget>();
        tabs->set_callback([=] (int id) {tabs->set_selected_id(id);});

        Widget *tab = next_tab(tabs, "Giocatori");

        /* No need to store a pointer, the data structure will be automatically
           freed when the parent window is deleted */

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

        TextBox *tempo_iniziale;
        new Label(tab, "Tempo iniziale");
        tempo_iniziale = minuti(tab, 15);

        TextBox *tempo_manche[3];
        new Label(tab, "Tempi aggiunti ai giocatori dopo avere risolto ...");
        for (int i = 0; i < 3; i++)
        {
            new Label(tab, "... Manche " + std::to_string(i));
            tempo_manche[i] = minuti(tab, 15);
        }

        struct {
            TextBox *aggiunto, *sottrato;
        } tempo_sfida[2];
        new Label(tab, "Tempi aggiunti ai giocatori dopo sfida");
        for (int i = 0; i < 2; ++i)
        {
            new Label(tab, "Manche " + std::to_string(i));
            tempo_sfida[i].aggiunto = minuti(tab, 1);
        }
        new Label(tab, "Tempi sottrati dei giocatori dopo sfida");
        for (int i = 0; i < 2; ++i)
        {
            new Label(tab, "Manche " + std::to_string(i));
            tempo_sfida[i].sottrato = minuti(tab, i == 0 ? 0 : 1);
        }

        tab = next_tab(tabs, "Tempi");

        new Label(tab, "Tempo sottrato dopo tentazione");
        TextBox *tempo_tentazione = minuti(tab, 2);

        new Label(tab, "Tempo sottrato dopo errore");
        TextBox *tempo_errore = minuti(tab, 5);

        TextBox *tempo_errore_risolvi = minuti(tab, "Tempo sottrato dopo errore dopo risolvi", 1);
        TextBox *tempo_slide = secondi(tab, "Tempo slide", 4);
        TextBox *tempo_suspance = secondi(tab, "Tempo suspance", 7);
        TextBox *tempo_alert = minuti(tab, "Tempo alert", 1);
        TextBox *tempo_azione = secondi(tab, "Tempo azione", 5);
        TextBox *tempo_pausa_azione = secondi(tab, "Tempo pausa azione", 5);

        tab = next_tab(tabs, "Manche 1");

        tab = next_tab(tabs, "Run game");

        Button *b = new Button(tab, "Save configuration and run game");
        b->set_callback([giocatori] { 
            std::ofstream out("config.bin", std::ios::binary);
            for (int i = 0; i < 3; ++i)
            {
                out << giocatori[i].nome->value() << std::endl << giocatori[i].notizia->value() << std::endl;
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
    ref<Shader> m_shader;
    ref<RenderPass> m_render_pass;

    using ImageHolder = std::unique_ptr<uint8_t[], void(*)(void*)>;
    std::vector<std::pair<ref<Texture>, ImageHolder>> m_images;
    int m_current_image;
};

int main(int /* argc */, char ** /* argv */) {
    try {
        nanogui::init();

        /* scoped variables */ {
            ref<ExampleApplication> app = new ExampleApplication();
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

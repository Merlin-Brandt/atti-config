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

#include <nanogui/opengl.h>
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

#define STB_IMAGE_STATIC
#define STB_IMAGE_IMPLEMENTATION
#if defined(_MSC_VER)
#  pragma warning (disable: 4505) // don't warn about dead code in stb_image.h
#elif defined(__GNUC__)
#   pragma GCC diagnostic ignored "-Wunused-function"
#endif
#include <stb_image.h>

using namespace nanogui;

class ExampleApplication : public Screen {
public:
    ExampleApplication() : Screen(Vector2i(1024, 768), "NanoGUI Test") {
        inc_ref();
        Window *window = new Window(this, "Button demo");
        window->set_position(Vector2i(15, 15));
        window->set_layout(new GroupLayout());

        /* No need to store a pointer, the data structure will be automatically
           freed when the parent window is deleted */
        new Label(window, "Push buttons", "sans-bold");

        Button *b = new Button(window, "Plain button");
        b->set_callback([] { std::cout << "pushed!" << std::endl; });
        b->set_tooltip("short tooltip");

        new Label(window, "Toggle buttons", "sans-bold");
        b = new Button(window, "Toggle me");
        b->set_flags(Button::ToggleButton);
        b->set_change_callback([](bool state) { std::cout << "Toggle button state: " << state << std::endl; });

        new Label(window, "Radio buttons", "sans-bold");
        b = new Button(window, "Radio button 1");
        b->set_flags(Button::RadioButton);
        b = new Button(window, "Radio button 2");
        b->set_flags(Button::RadioButton);

        new Label(window, "Popup buttons", "sans-bold");
        PopupButton *popup_btn = new PopupButton(window, "Popup", FA_FLASK);
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

        window = new Window(this, "Basic widgets");
        window->set_position(Vector2i(200, 15));
        window->set_layout(new GroupLayout());

        new Label(window, "Message dialog", "sans-bold");
        Widget *tools = new Widget(window);
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

        new Label(window, "File dialog", "sans-bold");
        tools = new Widget(window);
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

        new Label(window, "Combo box", "sans-bold");
        new ComboBox(window, { "Combo box item 1", "Combo box item 2", "Combo box item 3"});
        new Label(window, "Check box", "sans-bold");
        CheckBox *cb = new CheckBox(window, "Flag 1",
            [](bool state) { std::cout << "Check box 1 state: " << state << std::endl; }
        );
        cb->set_checked(true);
        cb = new CheckBox(window, "Flag 2",
            [](bool state) { std::cout << "Check box 2 state: " << state << std::endl; }
        );
        new Label(window, "Progress bar", "sans-bold");
        m_progress = new ProgressBar(window);

        new Label(window, "Slider and text box", "sans-bold");

        Widget *panel = new Widget(window);
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

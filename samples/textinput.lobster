// Shows how you could input text strings.

import std
import vec
import color
import gl

gl_window("text input", 1200, 600)
check(gl_set_font_name("data/fonts/Inconsolata/Inconsolata-Regular.ttf"), "font!")

gl_start_text_input(xy_0i, xy_1i * gl_get_font_size())

let log = []

while gl_frame():
    gl_clear(color_black)
    gl_set_font_size(30)
    // This returns other values to render IME correctly, which we'll skip here.
    let text = gl_text_input_state()
    gl_text(text + "_")
    if gl_button("return") == 1:
        // Here we normally end the input.
        log.insert(0, text)
        gl_end_text_input()
        // For now, go right back to inputting a new string:
        gl_start_text_input(xy_0i, xy_1i * gl_get_font_size())
    elif gl_key_repeat("backspace") == 1:
        // Inefficient but simple way to drop last character.
        let uv = string_to_unicode(text)
        if uv.length:
            uv.pop()
            gl_set_text_input(unicode_to_string(uv))
    // Render all strings input so far:
    for(log) l, i:
        gl_translate(xy_f { 0.0, gl_get_font_size() * (i + 2.0) }):
            gl_text(l)

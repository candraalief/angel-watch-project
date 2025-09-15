shader_type canvas_item;

uniform float strength : hint_range(0.0, 1.0) = 0.1;

void fragment() {
    vec4 tex_color = texture(TEXTURE, UV);
    tex_color.a *= strength; // kurangi alpha transparansinya
    COLOR = tex_color;
}
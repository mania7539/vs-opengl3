#shader vertex
#version 330 core

layout(location = 0) in vec4 position;
layout(location = 1) in vec2 texCoord;

out vec2 vTexCoord;

void main()
{
	vTexCoord = texCoord;
	gl_Position = position;
};


#shader fragment
#version 330 core

in vec2 vTexCoord;
layout(location = 0) out vec4 color;

uniform sampler2D u_Color;

void main()
{
	if (u_Color.r < 1.0) u_Color.r = 1.0;
	color = texture(u_Color, vTexCoord);
};
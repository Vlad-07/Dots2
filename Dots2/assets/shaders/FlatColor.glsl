#type vertex
#version 330 core

layout(location = 0) in vec3 a_Position;

uniform mat4 u_VP;
uniform mat4 u_Transform;
uniform vec4 u_Color;

out vec4 v_Color;

void main()
{
	v_Color = u_Color;
	gl_Position = u_VP * u_Transform * vec4(a_Position, 1.0);
}

#type fragment
#version 330 core

layout(location = 0) out vec4 color;

in vec4 v_Color;

void main()
{
	color = v_Color;
}
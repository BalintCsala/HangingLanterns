#version 150

#moj_import <light.glsl>

const float PHI = 1.61803398875;
const float SWAYING_AMOUNT = 0.1;
const float SWAYING_SPEED = 1000.0;
const float EPSILON = 0.001;

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform vec3 ChunkOffset;
uniform float GameTime;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec4 normal;

mat3 tbn(vec3 normal, vec3 up) {
	vec3 tangent = normalize(cross(up, normal));
	vec3 bitangent = cross(normal, tangent);
	
	return mat3(tangent, bitangent, normal);
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position + ChunkOffset, 1.0);

	float alpha = texture(Sampler0, UV0).a;
	if (abs(alpha - 141.0 / 255.0) < 0.001) {
		
		float time = GameTime * SWAYING_SPEED + dot(floor(Position), vec3(1)) * 1234.0;
		vec3 newForward = normalize(vec3(
			sin(time) * SWAYING_AMOUNT,
			sin(time * PHI) * SWAYING_AMOUNT,
			-1 + sin(time * 3.14) * SWAYING_AMOUNT
		));
		
		vec3 relativePos = fract(Position);
		if (relativePos.y > EPSILON) {
			relativePos -= vec3(0.5, 1, 0.5);
			relativePos = tbn(newForward, vec3(0, 1, 0)) * relativePos;
			vec3 newPos = relativePos + vec3(0.5, 1, 0.5);
			gl_Position = ProjMat * ModelViewMat * vec4(floor(Position) + newPos + ChunkOffset, 1.0);
		}
		
	}
	
    vertexDistance = length((ModelViewMat * vec4(Position + ChunkOffset, 1.0)).xyz);
    vertexColor = Color * minecraft_sample_lightmap(Sampler2, UV2);
    texCoord0 = UV0;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}
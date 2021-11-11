#version 150

#moj_import <light.glsl>

const float PHI = 1.61803398875;
const float SWAYING_AMOUNT = 0.015;
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

vec4 quaternionMultiply(vec4 a, vec4 b) {
    return vec4(
        a.x * b.w + a.y * b.z - a.z * b.y + a.w * b.x,
        -a.x * b.z + a.y * b.w + a.z * b.x + a.w * b.y,
        a.x * b.y - a.y * b.x + a.z * b.w + a.w * b.z,
        -a.x * b.x - a.y * b.y - a.z * b.z + a.w * b.w
    );
}

vec3 quaternionRotate(vec3 pos, vec4 q) {
    vec4 qInv = vec4(-q.xyz, q.w);
    return quaternionMultiply(quaternionMultiply(q, vec4(pos, 0)), qInv).xyz;
}

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position + ChunkOffset, 1.0);

	float alpha = texture(Sampler0, UV0).a;
	if (abs(alpha - 141.0 / 255.0) < 0.001) {
		
		vec3 relativePos = fract(Position);
		
		if (relativePos.y > EPSILON) {
			float time = GameTime * SWAYING_SPEED + dot(floor(Position), vec3(1)) * 1234.0;
			vec3 newDown = normalize(vec3(
				sin(time * PHI) * SWAYING_AMOUNT,
				-1,
				sin(time) * SWAYING_AMOUNT
			));
		
			relativePos -= vec3(0.5, 1.0, 0.5);
			vec3 axis = normalize(cross(vec3(0, 1, 0), newDown));
			float cosAngle = newDown.y;
			vec4 quat = vec4(sqrt(1 - cosAngle * cosAngle) * axis, cosAngle);
			relativePos = quaternionRotate(relativePos, quat);
			vec3 newPos = relativePos + vec3(0.5, 1, 0.5);
			gl_Position = ProjMat * ModelViewMat * vec4(floor(Position) + newPos + ChunkOffset, 1.0);
		}
		
	}
	
    vertexDistance = length((ModelViewMat * vec4(Position + ChunkOffset, 1.0)).xyz);
    vertexColor = Color * minecraft_sample_lightmap(Sampler2, UV2);
    texCoord0 = UV0;
    normal = ProjMat * ModelViewMat * vec4(Normal, 0.0);
}

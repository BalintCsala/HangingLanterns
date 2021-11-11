#version 150

#moj_import<font.glsl>

in vec4 vertexColor;

uniform vec4 ColorModulator;

out vec4 fragColor;

void main() {
    vec4 color = vertexColor;

    if (distance(vertexColor.rgb, vec3(239.0, 50.0, 61.0) / 255.0) < 0.01) {
        // Set offset to the pixel coordinates you want the text to start at
        ivec2 start = ivec2(10, 10);
        // Set these to the text and background color respectively
        vec4 textColor = vec4(1);
        vec4 backgroundColor = vertexColor;

        // Don't change from here
        ivec2 pixel = ivec2(gl_FragCoord.xy);
        ivec2 offset = pixel - start;
        if (offset.x >= 0 && offset.y >= 0 && offset.x < 658 && offset.y < 12) {
            if (offset.x < 10) {
                bool pixelOn = getPixel(_S, (offset.x - 0) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 12) {
                fragColor = backgroundColor;
            } else if (offset.x < 22) {
                bool pixelOn = getPixel(_H, (offset.x - 12) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 24) {
                fragColor = backgroundColor;
            } else if (offset.x < 34) {
                bool pixelOn = getPixel(_A, (offset.x - 24) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 36) {
                fragColor = backgroundColor;
            } else if (offset.x < 46) {
                bool pixelOn = getPixel(_D, (offset.x - 36) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 48) {
                fragColor = backgroundColor;
            } else if (offset.x < 58) {
                bool pixelOn = getPixel(_E, (offset.x - 48) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 60) {
                fragColor = backgroundColor;
            } else if (offset.x < 70) {
                bool pixelOn = getPixel(_R, (offset.x - 60) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 72) {
                fragColor = backgroundColor;
            } else if (offset.x < 82) {
                bool pixelOn = getPixel(_SPACE, (offset.x - 72) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 84) {
                fragColor = backgroundColor;
            } else if (offset.x < 94) {
                bool pixelOn = getPixel(_C, (offset.x - 84) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 96) {
                fragColor = backgroundColor;
            } else if (offset.x < 106) {
                bool pixelOn = getPixel(_R, (offset.x - 96) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 108) {
                fragColor = backgroundColor;
            } else if (offset.x < 118) {
                bool pixelOn = getPixel(_E, (offset.x - 108) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 120) {
                fragColor = backgroundColor;
            } else if (offset.x < 130) {
                bool pixelOn = getPixel(_A, (offset.x - 120) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 132) {
                fragColor = backgroundColor;
            } else if (offset.x < 142) {
                bool pixelOn = getPixel(_T, (offset.x - 132) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 144) {
                fragColor = backgroundColor;
            } else if (offset.x < 154) {
                bool pixelOn = getPixel(_E, (offset.x - 144) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 156) {
                fragColor = backgroundColor;
            } else if (offset.x < 166) {
                bool pixelOn = getPixel(_D, (offset.x - 156) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 168) {
                fragColor = backgroundColor;
            } else if (offset.x < 178) {
                bool pixelOn = getPixel(_SPACE, (offset.x - 168) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 180) {
                fragColor = backgroundColor;
            } else if (offset.x < 190) {
                bool pixelOn = getPixel(_B, (offset.x - 180) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 192) {
                fragColor = backgroundColor;
            } else if (offset.x < 202) {
                bool pixelOn = getPixel(_Y, (offset.x - 192) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 204) {
                fragColor = backgroundColor;
            } else if (offset.x < 214) {
                bool pixelOn = getPixel(_SPACE, (offset.x - 204) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 216) {
                fragColor = backgroundColor;
            } else if (offset.x < 226) {
                bool pixelOn = getPixel(_B, (offset.x - 216) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 228) {
                fragColor = backgroundColor;
            } else if (offset.x < 238) {
                bool pixelOn = getPixel(_A, (offset.x - 228) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 240) {
                fragColor = backgroundColor;
            } else if (offset.x < 250) {
                bool pixelOn = getPixel(_L, (offset.x - 240) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 252) {
                fragColor = backgroundColor;
            } else if (offset.x < 262) {
                bool pixelOn = getPixel(_I, (offset.x - 252) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 264) {
                fragColor = backgroundColor;
            } else if (offset.x < 274) {
                bool pixelOn = getPixel(_N, (offset.x - 264) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 276) {
                fragColor = backgroundColor;
            } else if (offset.x < 286) {
                bool pixelOn = getPixel(_T, (offset.x - 276) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 288) {
                fragColor = backgroundColor;
            } else if (offset.x < 298) {
                bool pixelOn = getPixel(_SPACE, (offset.x - 288) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 300) {
                fragColor = backgroundColor;
            } else if (offset.x < 310) {
                bool pixelOn = getPixel(_C, (offset.x - 300) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 312) {
                fragColor = backgroundColor;
            } else if (offset.x < 322) {
                bool pixelOn = getPixel(_S, (offset.x - 312) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 324) {
                fragColor = backgroundColor;
            } else if (offset.x < 334) {
                bool pixelOn = getPixel(_A, (offset.x - 324) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 336) {
                fragColor = backgroundColor;
            } else if (offset.x < 346) {
                bool pixelOn = getPixel(_L, (offset.x - 336) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 348) {
                fragColor = backgroundColor;
            } else if (offset.x < 358) {
                bool pixelOn = getPixel(_A, (offset.x - 348) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 360) {
                fragColor = backgroundColor;
            } else if (offset.x < 370) {
                bool pixelOn = getPixel(_SPACE, (offset.x - 360) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 372) {
                fragColor = backgroundColor;
            } else if (offset.x < 382) {
                bool pixelOn = getPixel(_PARENL, (offset.x - 372) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 384) {
                fragColor = backgroundColor;
            } else if (offset.x < 394) {
                bool pixelOn = getPixel(_G, (offset.x - 384) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 396) {
                fragColor = backgroundColor;
            } else if (offset.x < 406) {
                bool pixelOn = getPixel(_I, (offset.x - 396) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 408) {
                fragColor = backgroundColor;
            } else if (offset.x < 418) {
                bool pixelOn = getPixel(_T, (offset.x - 408) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 420) {
                fragColor = backgroundColor;
            } else if (offset.x < 430) {
                bool pixelOn = getPixel(_H, (offset.x - 420) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 432) {
                fragColor = backgroundColor;
            } else if (offset.x < 442) {
                bool pixelOn = getPixel(_U, (offset.x - 432) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 444) {
                fragColor = backgroundColor;
            } else if (offset.x < 454) {
                bool pixelOn = getPixel(_B, (offset.x - 444) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 456) {
                fragColor = backgroundColor;
            } else if (offset.x < 466) {
                bool pixelOn = getPixel(_DOT, (offset.x - 456) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 468) {
                fragColor = backgroundColor;
            } else if (offset.x < 478) {
                bool pixelOn = getPixel(_C, (offset.x - 468) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 480) {
                fragColor = backgroundColor;
            } else if (offset.x < 490) {
                bool pixelOn = getPixel(_O, (offset.x - 480) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 492) {
                fragColor = backgroundColor;
            } else if (offset.x < 502) {
                bool pixelOn = getPixel(_M, (offset.x - 492) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 504) {
                fragColor = backgroundColor;
            } else if (offset.x < 514) {
                bool pixelOn = getPixel(_RSLASH, (offset.x - 504) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 516) {
                fragColor = backgroundColor;
            } else if (offset.x < 526) {
                bool pixelOn = getPixel(_B, (offset.x - 516) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 528) {
                fragColor = backgroundColor;
            } else if (offset.x < 538) {
                bool pixelOn = getPixel(_A, (offset.x - 528) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 540) {
                fragColor = backgroundColor;
            } else if (offset.x < 550) {
                bool pixelOn = getPixel(_L, (offset.x - 540) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 552) {
                fragColor = backgroundColor;
            } else if (offset.x < 562) {
                bool pixelOn = getPixel(_I, (offset.x - 552) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 564) {
                fragColor = backgroundColor;
            } else if (offset.x < 574) {
                bool pixelOn = getPixel(_N, (offset.x - 564) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 576) {
                fragColor = backgroundColor;
            } else if (offset.x < 586) {
                bool pixelOn = getPixel(_T, (offset.x - 576) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 588) {
                fragColor = backgroundColor;
            } else if (offset.x < 598) {
                bool pixelOn = getPixel(_C, (offset.x - 588) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 600) {
                fragColor = backgroundColor;
            } else if (offset.x < 610) {
                bool pixelOn = getPixel(_S, (offset.x - 600) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 612) {
                fragColor = backgroundColor;
            } else if (offset.x < 622) {
                bool pixelOn = getPixel(_A, (offset.x - 612) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 624) {
                fragColor = backgroundColor;
            } else if (offset.x < 634) {
                bool pixelOn = getPixel(_L, (offset.x - 624) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 636) {
                fragColor = backgroundColor;
            } else if (offset.x < 646) {
                bool pixelOn = getPixel(_A, (offset.x - 636) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 648) {
                fragColor = backgroundColor;
            } else if (offset.x < 658) {
                bool pixelOn = getPixel(_PARENR, (offset.x - 648) / 2, offset.y / 2);   
                fragColor = pixelOn ? textColor : backgroundColor;
            } else if (offset.x < 660) {
                fragColor = backgroundColor;
            }
            return;
        }
    }

    if (color.a == 0.0) {
        discard;
    }
    fragColor = color * ColorModulator;
}

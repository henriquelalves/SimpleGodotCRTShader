# SimpleGodotCRTShader

*For more addons, check [my GitHub](https://github.com/henriquelalves) and [my itch.io](https://perons.itch.io/) page.*

A simple Godot shader that simulates CRT Displays.

![Without Shader](sample.png)
![With Shader](withshader.png)

## How to install (Godot 4.x)

You can copy simply copy the CRTShader.shader to any ColorRect.

You can also just add the `CRTScreen` node to your project (a node that sets some of the shader parameters automatically).

### For Godot 2.x and 3.x

There are separate branches for Godot 2.x and 3.x versions.

## How the Shader works
This Shader is made of 3 main components:

* Distortion: It is the effect that causes the '3D'-like monitor effect.
* Color Bleeding: Creates a small 'color bleeding' on the Red and Blue channel of close pixels.
* Scanlines: Creates a strip of black, alpha lines that moves constantly on the screen.

All the effects have Uniform variables, so they can be controlled without changing the code.

The effects are based on these articles:

* Distortion: http://www.geeks3d.com/20140213/glsl-shader-library-fish-eye-and-dome-and-barrel-distortion-post-processing-filters/2/
* Color Bleeding and Scanlines: http://www.magneticrealms.com/posts/2014/02/03/a-crt-filter-without-shaders/

## Credits

The screen sample was made by 'ansimuz' - the art is in public domain (CC0), and can be found in: http://opengameart.org/content/country-side-platform-tiles.

Character was made by EdwoodNigma - the spritesheet is in public domain (CC0), and can be found in: https://opengameart.org/content/platformer-character-0

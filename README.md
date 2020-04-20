# SimpleGodotCRTShader
A simple Godot shader that simulates CRT Displays.

![Without Shader](sample.png)
![With Shader](withshader.png)

## How to install

You can copy simply copy the CRTShader.shader

A tutorial on how to install the Shader on Godot 2.x (YouTube): [https://www.youtube.com/watch?v=ydrC-3Uy-aY&feature=youtu.be](https://www.youtube.com/watch?v=ydrC-3Uy-aY&feature=youtu.be)

## For Godot 3.x

You can simply copy the CRTShader.shader code to use on your project; to set it up, just use it in a an TextureRect with a white texture. Your game must be running 'under' the node for the CRT Shader to have any effect.

You can modify the values of the Shader using the Uniform Variables.

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

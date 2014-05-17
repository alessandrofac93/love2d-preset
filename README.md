# Löve2D Project Preset

This is a small helper repository to get you started coding a nice game with Löve2D.

It was originally wrote by [opatut](https://github.com/opatut), and [I](https://github.com/alessandrofac93) rewrote most of this and modernized all.

## Requirements

* Makefile and Bash scripts are not good for Windows, don't you try to feed them to the nasty Microsoft stuff. For Linux only!
* You should have Löve2D installed on your system, so you don't have to build the binary package all the time for testing

## Building

The following make targets are available:

    clean:              clears all generated data
    build:              packages the data and sources into ```game.love```
    run:                runs ```love game.love``` for you
    package-all:        creates all binary packages into ```pkg/```
    package-<platform>: generates binary package for one of the supported platforms

Just type ```make``` to perform the **build** and **run** targets.

## Development

Put your data in the ```data/``` folder, and your sources into ```src/```. Make sure to adjust ```src/config.lua```.

This project uses stable and powerful libraries. The documentation for 
them:

* [HUMP](http://vrld.github.io/hump/) (game engine and other utilities)
* [LCS](https://github.com/Yonaba/Lua-Class-System) (object-oriented programming)
* [love2d-assets-loader](http://yonaba.github.io/love2d-assets-loader/)


## License

The zlib/libpng License

* Copyright (c) 2013 Paul Bienkowski <opatutlol@aol.com>
* Copyright (c) 2014 Alessandro Facciorusso <alessandrofac93@gmail.com>

This software is provided 'as-is', without any express or implied warranty. In no event will the authors be held liable for any damages arising from the use of this software.

Permission is granted to anyone to use this software for any purpose, including commercial applications, and to alter it and redistribute it freely, subject to the following restrictions:

1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.

2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.

3. This notice may not be removed or altered from any source distribution.


The following files and directories are not part of this project and were redistributed under their respective licenses:

* data/DejaVuSans.ttf ([license here](http://dejavu-fonts.org/wiki/License))
* lib/linux_x64|x86 (Löve2D versions for Linux, license files included)
* lib/windows_x64|x86 (Löve2D versions for Windows, license files included)
* src/libs/hump (license included)
* src/libs/lcs (license included)
* src/libs/assets.lua ([MIT license](http://www.opensource.org/licenses/mit-license.php))


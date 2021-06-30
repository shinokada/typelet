<p align="center">
<img width="400" src="https://raw.githubusercontent.com/shinokada/typelet/main/images/typewriter3.gif" />
</p>
<p align="center">
Photo by <a href="https://unsplash.com/@lucaonniboni?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Luca Onnibonil</a> on <a href="https://unsplash.com/">Unsplash</a>. GIF image by Author.
</p>
<h1  align="center">Typelet</h1>

## Overview

Create and add large words print it with a typewriter effect.

![image](https://raw.githubusercontent.com/shinokada/tw/main/images/400-tw.gif)

## Requirement

- UNIX-lie (Tested on Ubuntu and MacOS.)
- [Figlet](http://www.figlet.org/)
- [GitHub CLI gh](https://github.com/cli/cli#installation)

## Usage

### Fonts

Install fonts from [Figlet fonts](http://www.figlet.org/fontdb.cgi) or [figlet-fonts](https://github.com/xero/figlet-fonts).

Make sure to use lowercase letters for a file name.

#### apt

If you installed Figlet with the sudo apt install figlet command, font files are /usr/share/figlet/ or /usr/share/figlet/fonts/.

#### Homebrew

If you installed Figlet using brew on ARM64 Mac, install files in the /opt/homebrew/Cellar/figlet/2.2.5/share/figlet/fonts directory. For x86_64 Mac, install files in the /usr/local/Cellar/figlet/2.2.5/share/figlet/fonts directory.


### Colors

When you print `-p`, use following number with the `--color` option.

| Number | Color           |
| ------ | --------------- |
| 0      | black           |
| 1      | red             |
| 2      | green (default) |
| 3      | yellow          |
| 4      | blue            |
| 5      | magenta         |
| 6      | cyan            |
| 7      | white           |

### Interval

When you print `-p`, interval determines the interval time. Use with `-i` or `--interval`.
Default: 2

| Number | time              | Speed                  |
| ------ | ----------------- | ---------------------- |
| 1      | 0.01-0.09 sec     | Slowest                |
| 2      | 0.001-0.009 sec   | Midium speed (Default) |
| 3      | 0.0001-0.0009 sec | Fastest                |

### Space

Use `-s`  to add spaces in front of all lines.
Default: 0

### Empty line

You can add a empty line using the `-e` option.

## Examples

### Create a new

Create a new Typelet file. The default font is standard.

```sh
typelet create Typewriter
```

### Add a line

After creating a new Typelet file, you can add a new line using the `add` option. Change a font using the `-f` option with a font name.

```sh
typelet -f banner add Print 
```

### Add a empty line

```sh
typelet empty
```

### Spaces

Use the `space` option to add spaces in front of all lines. The `space` option takes a number.

```sh
typelet space 30
```

This will add 30 spaces in front of all lines.

If you want to add spaces in front of a word/line, use quotes:

```sh
typelet -f standard create "     Typelet"
```

<p align="center">
<img width="500" src="https://raw.githubusercontent.com/shinokada/typelet/main/images/space.png" /> 
</p>


### Read the Typelet file

The `read` subcommand prints what's in the Typelet file.

```sh
typelet read
```

### Print

Print using the default settings.

```sh
typelet print
```

Print it with the fastest mode 3 and red color.

```sh
typelet --color 1 -i 3 print
# or
typelet -c 1 -i 3 print
```

### Manually edit Typelet file

Sometimes you want to edit the Typelet file ma

Use `open` to open the Typelet file in a editor.

```sh
typelet open
```

This will open the terminal default editor. If it's not set, vim will open.

You can open it with VS Code using `open v`.

```sh
typelet open v
```

### Save it to Gist

You can save what you created to a Gist using `gist`.

```sh
typelet gist
```

### Save to the local from a Gist

You can save a Gist to your Typelet file using `url`.

```sh

typelet url https://gist.github.com/shinokada/f7996e53914bc55854d2a800ec20ef82
```

### Other functions

```sh
# print version
typelet -v

# print help
typelet -h
```

See [figlet](http://www.figlet.org/examples.html), for font examples.

## Limitations

A long word splits to multiple lines.

You can check it using `typelet read`.


## Reference

- [Figlet font examples](http://www.figlet.org/examples.html)


## Author

Shinichi Okada

## License

MIT License

Copyright (c) 2021 Shinichi Okada

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


<p align="center">
<img width="400" src="https://raw.githubusercontent.com/shinokada/typelet/main/images/typewriter3.gif" />
</p>
<p align="center">
Photo by <a href="https://unsplash.com/@lucaonniboni?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Luca Onnibonil</a> on <a href="https://unsplash.com/">Unsplash</a>. GIF image by Author.
</p>
<p align="center">
<a href='https://ko-fi.com/Z8Z2CHALG' target='_blank'><img height='42' style='border:0px;height:42px;' src='https://storage.ko-fi.com/cdn/kofi3.png?v=3' alt='Buy Me a Coffee at ko-fi.com' /></a>
</p>
<h1  align="center">Typelet</h1>

## Overview

Create and add large words print it with a typewriter effect.

![image](https://raw.githubusercontent.com/shinokada/tw/main/images/400-tw.gif)

## Requirement

- UNIX-lie (Tested on Ubuntu and MacOS.)
- [Figlet](http://www.figlet.org/)
- [GitHub CLI gh](https://github.com/cli/cli#installation)

## Installation

### [Awesome package manager](https://github.com/shinokada/awesome)

```sh
awesome install shinokada/typelet
```

### Homebrew/Linuxbrew

```sh
brew tap shinokada/typelet
brew install typelet
```

### Debian/Ubuntu

```sh
curl https://api.github.com/repos/shinokada/typelet/releases/latest | grep "browser_download_url" | grep -Eo 'https://[^\"]*' | xargs wget
sudo apt install ./tera_XXXXXXXX.deb
```

Change `XXXXXXX` to the version downloaded.

## Uninstallation

### Awesome package manager

```sh
awesome rm typelet
```

### Homebrew/Linuxbrew uninstallation

```sh
brew uninstall typelet
```

### Debian/Ubuntu uninstallation

This method works for Debian/Ubuntu, Awesome package manager, and Homebrew/Linuxbrew.

```sh
curl -s https://raw.githubusercontent.com/shinokada/typelet/main/uninstall.sh > tmp1 && bash tmp1 && rm tmp1
```

## Usage

```sh
Usage: typelet [command] [options...] [arguments...]

Options:
  -h, --help
      --version

Commands:
Use command -h for a command help.
  create    Creates a word/line.
  add       Adds a word/line.
  space     Adds spaces.
  read      Reads the Typelet file.
  empty     Add a empty line.
  print     Prints the Typelet file.
  open      Opens the Typelet file with an editor.
  gist      Creates a Gist.
  url       Saves a Gist to your Typelet file using a Gist URL.
```

### Fonts

Install fonts from [Figlet fonts](http://www.figlet.org/fontdb.cgi) or [figlet-fonts](https://github.com/xero/figlet-fonts).

Please use lowercase letters for a file name.

#### apt

If you installed Figlet with the `sudo apt install figlet` command, font files are in `/usr/share/figlet/` or `/usr/share/figlet/fonts/`.

#### Homebrew

If you installed Figlet using brew on ARM64 Mac, installed files are in the `/opt/homebrew/Cellar/figlet/<version>/share/figlet/fonts` directory. For x86_64 Mac, installed files are in the `/usr/local/Cellar/figlet/<version>/share/figlet/fonts` directory.

### Colors

When you print, use following number with the `--color` or `-c` option.
Default: green

| Colors  |
| ------- |
| black   |
| red     |
| green   |
| yellow  |
| blue    |
| magenta |
| cyan    |
| white   |

### Interval

When you print, interval determines the interval time. Use with `-i` or `--interval`.
Default: medium

| Speed  | Time              |
| ------ | ----------------- |
| slow   | 0.01-0.09 sec     |
| medium | 0.001-0.009 sec   |
| fast   | 0.0001-0.0009 sec |

### Space

Use the `space` command to add spaces in front of all lines.
Default: 0

### Empty line

You can add a empty line using the `empty` command.

## Command help

Each command has a help menu.

```sh
typelet create -h
typelet add -h
typelet space -h
typelet read -h
typelet empty -h
typelet print -h
typelet open -h
typelet gist -h
typelet url -h
```

## Examples

### Create a new

Create a new Typelet file. The default font is standard.

```sh
typelet create Bash
```

### Add a line

After creating a new Typelet file, you can add a new line using the `add` option. Change a font using the `-f` option with a font name.

```sh
typelet add Scripts -f banner 
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
typelet create "     Typelet" -f standard 
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
typelet print --color cyan -i fast
# or
typelet print -c red -i slow
```

### Manually edit Typelet file

Sometimes you want to edit the Typelet file ma

Use `open` to open the Typelet file in a editor.

```sh
typelet open
```

This will open the terminal default editor. If it's not set, vim will open.

Use one from vi, emacs or vscode.

```sh
typelet open vi
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

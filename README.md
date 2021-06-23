# Typewriter Figlet (Tylet)

 _____     _      _
|_   _|   | |    | |
  | |_   _| | ___| |_
  | | | | | |/ _ \ __|
  | | |_| | |  __/ |_
  \_/\__, |_|\___|\__|
      __/ |
     |___/

## Overview

Create a figlet word or add words to file and print it like a typewriter.

![image](https://raw.githubusercontent.com/shinokada/tw/main/images/400-tw.gif)

## Requirement

- [Figlet](http://www.figlet.org/)
- [GitHub CLI gh](https://github.com/cli/cli#installation)

## Usage

### Colors

When you print `-p`, use following number with the `--color` option.

| Number | Color           |
| ------ | --------------- |
| 0      | black           |
| 1      | red             |
| 2      | green (default) |
| 3      | yellow          |
| 4      | blud            |
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

When you create or add a word, use `-s` to add spaces in front of lines.
Default: 0

### Word

`-w` or `--word` adds a word per line.

## Examples

### Create a new

Create a new file. The default font is roman, adding 10 spaces in front of all lines.

```sh
tylet -c Typewriter -f banner -s 10
# or
tylet --create Typewriter -f banner -s 10
```


### Add a line

After creating a new file, you can add a new line using the `-a` option.

```sh
tylet -a Print -f banner -s 10
# or
tylet --add Print -f banner -s 10
```

### read the file

The `-r` or `--read` option prints what's in the local file.

```sh
tylet -r
# or
tylet --read
```

### Print

Print using the default settings.

```sh
tylet -p
```

Print it with the fastest mode 3 and red color.

```sh
tylet -p --color 1 -i 3
# or
tylet --print --color 1 -i 3
```

### Save it to Gist

You can save what you created to a Gist using `-g` or `--gist`.

```sh
tylet -g
# or
tylet --gist
```

### Save to the local from a Gist

You can save a Gist to your local file using `-u` or `--url`.

```sh
tylet -u https://gist.github.com/shinokada/f7996e53914bc55854d2a800ec20ef82
# or
tylet -url https://gist.github.com/shinokada/f7996e53914bc55854d2a800ec20ef82
```

### Other functions

```sh
# print version
tylet -v

# print help
tylet -h
```

See [filet](http://www.figlet.org/examples.html), for font examples.

### Save to Gist

```sh
tylet -g
# or
tylet --gist
```

### Save from Gist to local

```sh
tylet -u <gist-url>
# or
tylet --url <gist-url>
# then print it
tylet -p --color 1 -i 3
```

## Limitations

Ceratin Figlet fonts may create multiple lines for a word.

You can check it using `tylet read`.


## Reference

- [Figlet font examples](http://www.figlet.org/examples.html)


## Author

Shinichi Okada

## License

MIT License

Copyright (c) 2018 Fábio Maia

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

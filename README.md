# Typewriter Figlet (Tylet)

## Overview

Create a figlet word or add words to file and print it like a typewriter.

![image](https://raw.githubusercontent.com/shinokada/tw/main/images/400-tw.gif)

## Requirement

- [Figlet](http://www.figlet.org/)

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

```sh
# create a file. The default font is roman, adding 10 spaces in front of all lines
tylet -c Typewriter -f banner -s 10
# or
tylet --create Typewriter -f banner -s 10

# add a line
tylet -a Print -f banner -s 10
# or
tylet --add Print -f banner -s 10

# read the file
tylet -r
# or
tylet --read

# print it with the fastest mode 3 and red color.
tylet -p --color 1 -i 3
# or
tylet --print --color 1 -i 3

# print version
tylet -v

# print help
tylet -h
```

See [filet](http://www.figlet.org/examples.html), for font examples.

## Features


## Reference


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

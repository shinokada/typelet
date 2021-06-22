# Typewriter Print

## Overview

Create a file or add a line to file and print it like a typewriter.

## Requirement

## Usage

Colors: Use `--color` option.

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


```sh
# create a file. The default font is roman, adding 10 spaces in front of all lines
tp create Typewriter -f banner -s 10

# add a line
tp add Print -f banner -s 10

# read the file
tp -r

# print it with the fastest mode 3.
tp print --color 2 -i 3 

# print version
tp -v

# print help
tp -h
```

See [filet](http://www.figlet.org/examples.html), for font examples.

## Features


## Reference


## Author


## Licence

Please see license.txt.

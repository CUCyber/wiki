---
title: Introduction
...

## Hello
World!

## Self
[Link](intro/introduction)

## Image
![](https://fooster.io/res/img/clippy.svg)

## Code
```python
#!/usr/bin/env python3
import io
import json
import sys

from pandocfilters import walk, Link


# change targets of links
def rewrite_target(key, val, fmt, meta):
    # when we are at a link node
    if key == 'Link':
        # get details of link
        attr, inline, target = val
        return Link(attr, inline, [meta['root']['c'] + target[0] + '.html', target[1]])


# rewrite link targets in file
def rewrite_targets(doc, fmt):
    return walk(doc, rewrite_target, fmt, doc['meta'] if 'meta' in doc else {})


if __name__ == '__main__':
    # read JSON in, parse it with an optional format argument, and write JSON out
    json.dump(rewrite_targets(json.load(io.TextIOWrapper(sys.stdin.buffer, encoding='utf-8')), sys.argv[1] if len(sys.argv) > 1 else ''), io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8'))
```

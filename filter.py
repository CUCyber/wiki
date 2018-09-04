#!/usr/bin/env python3
import io
import json
import sys

from pandocfilters import walk, Link, Image


# change targets of links
def rewrite_target(key, val, fmt, meta):
    # when we are at a link node
    if key == 'Link':
        # get details of link
        attr, inline, target = val

        if target[0].startswith('http://') or target[0].startswith('https://') or target[0].startswith('mailto:'):
            url = target[0]
        else:
            parts = target[0].split('#', 1)

            if len(parts) > 1:
                url = meta['root']['c'] + parts[0] + '.html#' + parts[1]
            else:
                url = meta['root']['c'] + parts[0] + '.html'

        return Link(attr, inline, [url, target[1]])
    # when we are at a image node
    elif key == 'Image':
        # get details of link
        attr, inline, target = val

        if target[0].startswith('http://') or target[0].startswith('https://') or target[0].startswith('mailto:'):
            url = target[0]
        else:
            path = target[0]
            url = meta['root']['c'] + path

        return Image(attr, inline, [url, target[1]])


# rewrite link targets in file
def rewrite_targets(doc, fmt):
    return walk(doc, rewrite_target, fmt, doc['meta'] if 'meta' in doc else doc[0]['unMeta'])


if __name__ == '__main__':
    # read JSON in, parse it with an optional format argument, and write JSON out
    json.dump(rewrite_targets(json.load(io.TextIOWrapper(sys.stdin.buffer, encoding='utf-8')), sys.argv[1] if len(sys.argv) > 1 else ''), io.TextIOWrapper(sys.stdout.buffer, encoding='utf-8'))

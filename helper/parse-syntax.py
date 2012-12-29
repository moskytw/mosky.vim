#!/usr/bin/env python
# -*- coding: utf-8 -*-

import re

to_collect_patterns = iter([
    (
        re.compile("\*Comment"),
        re.compile("\*Todo"),
        re.compile("((?:[A-Z][A-Za-z]+)+)"),
    ),
    (
        re.compile("ColorColumn\tused for the columns set with 'colorcolumn'"),
        re.compile("Tooltip\t\tCurrent font, background and foreground of the tooltips."),
        re.compile("^((?:[A-Z][A-Za-z]+)+)"),
    ),
])

start, end, pattern = next(to_collect_patterns)

to_collect = False
word_list = []
word_lists = []

for i, line in enumerate(open('syntax.txt')):

    if start.search(line):
        to_collect = True

    if not to_collect: continue

    match = pattern.search(line)
    if match: word_list.append(match.group(1))

    if end.search(line):
        to_collect = False
        word_lists.append(word_list)
        word_list = []
        try:
            start, end, pattern = next(to_collect_patterns)
        except StopIteration:
            break

print 'CONVENTIONAL_GROUP_NAMES = %r' % word_lists[0]
print
print 'VIM_GROUP_NAMES = %r' % word_lists[1]
print
print 'count: ', map(len, word_lists)

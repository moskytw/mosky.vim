#!/usr/bin/env python
# -*- coding: utf-8 -*-

syntax_txt = open('syntax.txt').read()

import re

re_groups = re.compile('^((?:[A-Z][a-z]+)+)\t+', re.M)

c = 0
for m in re_groups.finditer(syntax_txt):
    c += 1
    print m.group(1)
print
print 'count:', c
print

re_conventions = re.compile('^\s{2,}\*?((?:[A-Z][a-z]+)+)', re.M)

c = 0
for m in re_conventions.finditer(syntax_txt):
    c += 1
    print m.group(1)
print
print 'count:', c

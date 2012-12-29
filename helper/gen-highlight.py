#!/usr/bin/env python
# -*- coding: utf-8 -*-

VIM_GROUP_NAMES = (
    'ColorColumn',
    'Conceal',
    'Cursor',
    'CursorColumn',
    'CursorLine',
    'Directory',
    'DiffAdd',
    'DiffChange',
    'DiffDelete',
    'DiffText',
    'ErrorMsg',
    'VertSplit',
    'Folded',
    'FoldColumn',
    'SignColumn',
    'IncSearch',
    'LineNr',
    'CursorLineNr',
    'MatchParen',
    'ModeMsg',
    'MoreMsg',
    'NonText',
    'Normal',
    'Pmenu',
    'PmenuSel',
    'PmenuSbar',
    'PmenuThumb',
    'Question',
    'Search',
    'SpecialKey',
    'SpellBad',
    'SpellCap',
    'SpellLocal',
    'SpellRare',
    'StatusLine',
    'TabLine',
    'TabLineFill',
    'TabLineSel',
    'Title',
    'Visual',
    'WarningMsg',
    'WildMenu',
    'Menu',
    'Scrollbar',
    'Tooltip',
)

CONVENTIONAL_GROUP_NAMES = (
    'Comment',
    'Constant',
    'String',
    'Character',
    'Number',
    'Boolean',
    'Float',
    'Identifier',
    'Function',
    'Statement',
    'Conditional',
    'Repeat',
    'Label',
    'Operator',
    'Keyword',
    'Exception',
    'PreProc',
    'Include',
    'Define',
    'Macro',
    'PreCondit',
    'Type',
    'StorageClass',
    'Structure',
    'Typedef',
    'Special',
    'SpecialChar',
    'Tag',
    'Delimiter',
    'SpecialComment',
    'Debug',
    'Underlined',
    'Ignore',
    'Error',
    'Todo',
)

def gen_hi_clear(group_names):
    for group_name in group_names:
        print 'hi clear %s' % group_name

def gen_hi(group_names, **kargs):
    attr = ' '.join('%s=%s' % (k, v) for k, v in sorted(kargs.items()))
    width = max(map(len, group_names))
    templ = 'hi %%-%ds %s' % (width, attr)
    for group_name in group_names:
        print templ % group_name

if __name__ == '__main__':

    print '" clear vim\'s groups'
    gen_hi_clear(VIM_GROUP_NAMES)
    print
    print '" clear conventional groups'
    gen_hi_clear(CONVENTIONAL_GROUP_NAMES)
    print

    #gen_hi(VIM_GROUP_NAMES, cterm='NONE', ctermbg='black')

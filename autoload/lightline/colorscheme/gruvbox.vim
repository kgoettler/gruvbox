" -----------------------------------------------------------------------------
" File: gruvbox.vim
" Description: Gruvbox colorscheme for Lightline (itchyny/lightline.vim)
" Author: gmoe <me@griffinmoe.com>
" Source: https://github.com/morhetz/gruvbox
" Last Modified: 20 Sep 2017
" -----------------------------------------------------------------------------

function! s:getGruvColor(group)
  let guiColor = synIDattr(hlID(a:group), "fg", "gui") 
  let termColor = synIDattr(hlID(a:group), "fg", "cterm") 
  return [ guiColor, termColor ]
endfunction

if exists('g:lightline')

  let s:bg0  = s:getGruvColor('GruvboxBg0')
  let s:bg1  = s:getGruvColor('GruvboxBg0')
  let s:bg2  = s:getGruvColor('GruvboxBg2')
  let s:bg4  = s:getGruvColor('GruvboxBg4')
  let s:fg1  = s:getGruvColor('GruvboxFg1')
  let s:fg4  = s:getGruvColor('GruvboxFg4')

  let s:yellow = s:getGruvColor('GruvboxYellow')
  let s:blue   = s:getGruvColor('GruvboxBlue')
  let s:aqua   = s:getGruvColor('GruvboxAqua')
  let s:orange = s:getGruvColor('GruvboxOrange')
  let s:green = s:getGruvColor('GruvboxGreen')

  let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
  let s:p.normal.left = [ [ s:fg4, s:bg0, 'bold' ], [ s:fg4, s:bg0 ] ]
  let s:p.normal.right = [ [ s:fg4, s:bg0 ], [ s:fg4, s:bg0 ] ]
  let s:p.normal.middle = [ [ s:fg4, s:bg1 ] ]
  let s:p.inactive.right = [ [ s:bg4, s:bg1 ], [ s:bg4, s:bg1 ] ]
  let s:p.inactive.left =  [ [ s:bg4, s:bg1 ], [ s:bg4, s:bg1 ] ]
  let s:p.inactive.middle = [ [ s:bg4, s:bg1 ] ]
  let s:p.insert.left = [ [ s:blue, s:bg0, 'bold' ], [ s:fg1, s:bg0 ] ]
  let s:p.insert.right = [ [ s:blue, s:bg0 ], [ s:fg1, s:bg0 ] ]
  let s:p.insert.middle = [ [ s:fg4, s:bg0 ] ]
  let s:p.terminal.left = [ [ s:bg0, s:green, 'bold' ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.right = [ [ s:bg0, s:green ], [ s:fg1, s:bg2 ] ]
  let s:p.terminal.middle = [ [ s:fg4, s:bg2 ] ]
  let s:p.replace.left = [ [ s:aqua, s:bg0, 'bold' ], [ s:fg1, s:bg0 ] ]
  let s:p.replace.right = [ [ s:aqua, s:bg0 ], [ s:fg1, s:bg0 ] ]
  let s:p.replace.middle = [ [ s:fg4, s:bg0 ] ]
  let s:p.visual.left = [ [ s:orange, s:bg0, 'bold' ], [ s:bg4, s:bg0 ] ]
  let s:p.visual.right = [ [ s:orange, s:bg0 ], [ s:bg4, s:bg0 ] ]
  let s:p.visual.middle = [ [ s:fg4, s:bg1 ] ]
  let s:p.tabline.left = [ [ s:fg4, s:bg0 ] ]
  let s:p.tabline.tabsel = [ [ s:fg1, s:bg0 ] ]
  let s:p.tabline.middle = [ [ s:bg0, s:bg0 ] ]
  let s:p.tabline.right = [ [ s:orange, s:bg0 ] ]
  let s:p.normal.error = [ [ s:orange, s:bg0 ] ]
  let s:p.normal.warning = [ [ s:bg2, s:yellow ] ]

  let g:lightline#colorscheme#gruvbox#palette = lightline#colorscheme#flatten(s:p)
endif

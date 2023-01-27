let wiki_1 = {}
let wiki_1.path = '~/Dropbox/wikis/documentation/'
let wiki_1.nested_syntaxes = {'python': 'python', 'sql': 'sql', 'bash': 'sh'}
let wiki_1.path_html= '~/Dropbox/wiki_html/documentation/'
let wiki_1.template_path = '~/Dropbox/wikis/documentation/templates'
let wiki_1.template_default = 'default'
let wiki_1.template_ext = '.html'
let wiki_1.auto_toc = 1
let wiki_1.diary_frequency = 'weekly'
let wiki_1.diary_start_week_day = 'sunday'

let wiki_2 = {}
let wiki_2.path = '~/Dropbox/wikis/tech/'
let wiki_2.nested_syntaxes = {'python': 'python', 'sql': 'sql', 'bash': 'sh'}
let wiki_2.path_html= '~/Dropbox/wiki_html/tech/'
let wiki_2.template_path = '~/Dropbox/wikis/tech/templates'
let wiki_2.template_default = 'default'
let wiki_2.template_ext = '.html'
let wiki_2.auto_toc = 1

let wiki_3 = {}
let wiki_3.path = '~/Dropbox/wikis/home/'
let wiki_3.nested_syntaxes = {'python': 'python', 'sql': 'sql', 'bash': 'sh'}
let wiki_3.path_html= '~/Dropbox/wiki_html/home/'
let wiki_3.template_path = '~/Dropbox/wikis/home/templates'
let wiki_3.template_default = 'default'
let wiki_3.template_ext = '.html'
let wiki_3.auto_toc = 1

let wiki_4 = {}
let wiki_4.path = '~/Documents/stories/'
let wiki_4.nested_syntaxes = {'python': 'python', 'sql': 'sql', 'bash': 'sh'}
let wiki_4.path_html= '~/Documents/stories_html/'
let wiki_4.template_path = '~/Documents/stories/templates'
let wiki_4.template_default = 'default'
let wiki_4.template_ext = '.html'
let wiki_4.syntax = 'markdown'
let wiki_4.ext= '.wiki'
let wiki_4.auto_toc = 1

" Setup wikis
let g:vimwiki_list = [wiki_1, wiki_2, wiki_3, wiki_4]
let g:vimwiki_ext2syntax = {'.md': 'markdown'}

" Colors
let g:vimwiki_hl_headers = 1
hi VimwikiHeader1 ctermfg=12 cterm=bold
hi VimwikiHeader2 ctermfg=10 cterm=bold
hi VimwikiHeader3 ctermfg=33 cterm=bold
hi VimwikiHeader4 ctermfg=207 cterm=bold
hi VimwikiLink cterm=underline ctermfg=45

" function! ToggleCalendar()
"     execute ":Calendar"
"     if exists("g:calendar_open")
"         if g:calendar_open == 1
"             execute "q"
"             unlet g:calendar_open
"         else
"             g:calendar_open = 1
"         end
"     else
"         let g:calendar_open = 1
"     end
" endfunction
":autocmd FileType vimwiki map c :call ToggleCalendar() 

command! Diary VimwikiDiaryIndex
augroup vimwikigroup
    autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
    "vimwiki-option-auto_tags
augroup end

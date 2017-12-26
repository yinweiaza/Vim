"-----------------vim����ѡ��-------------------------------------------
"  ����+�Զ�����+�к�+�۵�+�Ż�
set nu

if has("win32")
 au GUIEnter * simalt ~x
endif      

"����ļ�������  
filetype on  
filetype plugin indent on
filetype indent on
  
"��¼��ʷ������  
set history=1000  

" ����
" set encoding=utf-8
  
"�﷨������ʾ  
syntax on  
  
"�Զ�����  
set autoindent  
set cindent  
  
"����ѡ����뷽ʽ  
set smartindent  
  
"tabΪ4���ո�  
set tabstop=4  
  
"��ǰ��֮�佻��ʱʹ��4���ո�  
set shiftwidth=4  
  
"����ƥ��ģʽ�����������Ż����������  
set showmatch  
  
"ȥ��vim��toolbar  
"set guioptions=T  
  
"ȥ����������  
set vb t_vb=  
  
"�༭ʱ��ʾ���״̬  
set ruler  
  
"����ƥ��  
set incsearch  
  
"�޸��ļ��Զ�����  
"if has("vms")  
"    set nobackup  
"else  
"    set backup  
"endif 
set nobackup
set noswapfile

"�����и�
set cmdheight=3

" �˸��ʹ��"
set nocompatible
set backspace=indent,eol,start

" �۵�
set foldmethod=marker 
"---------------------------------------------------------------


"----------------��������-------------------------------
" �����˵�����
highlight  Pmenu  	 guibg=yellow guifg=red
highlight  PmenuSel  guibg=green  guifg=brown

" ������python+django��ȫ������
filetype plugin on 
let g:pydiction_location = 'F:\Vim\vimfiles\plugin\complete-dict'
let g:pydiction_menu_height = 20


"--------------------------------------------------------



"------------------���ÿ�ݼ�ӳ��-----------------
"ǰ������
let mapleader = ","
let g:mapleader = ","

"�޸Ĵ��ڴ�С
noremap <leader>ha    :res +10<CR>
noremap <leader>va    :vertical res +20<CR>
noremap <leader>hs	   :res -10<CR>
noremap <leader>vs	   :vertical res -20<CR>

"����
noremap <leader>w	:w!<CR>
noremap <leader>wq	:wq!<CR>
noremap <leader>q	:q!<CR>
"
" ����λ���л�
noremap <leader>ch  <C-W>H<CR>
noremap <leader>cj <C-W>J<CR>
noremap <leader>ck  <C-W>K<CR>
noremap <leader>cl <C-W>L<CR>

"��ת����
noremap <leader>gh <C-W>h<CR>
noremap <leader>gj <C-W>j<CR>
noremap <leader>gk <C-W>k<CR>
noremap <leader>gl <C-W>l<CR>

nmap <leader>cfg  :source F:/Vim/_vimrc<CR>
nmap <leader>ofg  :edit   F:/Vim/_vimrc<CR>

"---------------------------------------------------


"-------------��������-------------------
"����ʹ�ú�ɫ  
colorscheme darkblue
set background=dark  
"------------------------------------------
"
"
"�����Զ���ȫ
if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif


" �Զ��庯��
function! CreateTags(srcPath,savePath)
	if empty(a:srcPath) || empty(a:savePath)
		echoerr "no Path"
		return -1;
	endif
	execute "!ctags -R  --c++-kinds=+p --c-kinds=+p  --fields=+iaS --extra=+q  --sort=yes  -f ". a:savePath. "/tags"."  ".a:srcPath
	let l:tagPath = a:savePath."\\tags"
	execute "set tags+=".l:tagPath
endfunction

noremap <Leader>cs  :!cscope -Rbq<CR>

"------------------------�������--------------------------------
"omni����
set nocp
filetype  plugin on
let g:VcIncludeTag = "F:\\"
let g:SavePath = "E:\\"
let g:includeTagPath = '"C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\include"'." ".'"C:\wxWidgets\include"'." ".'"C:\wxWidgets\lib"'

map <leader>gs  :call CreateTags(g:includeTagPath,g:VcIncludeTag)<CR>
map <leader>tg  :call CreateTags(input("������Ҫ����tags��Ŀ¼:"),g:SavePath)<CR>
set tags+=./tags;F:\\tags


set completeopt=menuone,menu
let OmniCpp_MayCompleteDot=1   
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_NamespaceSearch=1 
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1 
let OmniCpp_SelectFirstItem =0 

"winManager����
let g:winManagerWidth=35
let g:winManagerWindowLayout='BufExplorer,FileExplorer|TagList'
let g:AutoOpenWinManager=1
noremap <leader>wm :WMToggle<CR>
noremap <leader>wf :FirstExplorerWindow<CR>
noremap <leader>wb :BottomExplorerWindow<CR>

"neocomplcache����
let g:neocomplcache_enable_at_startup = 1 "����Զ�����
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_auto_completion_start_length=2

imap <F7>  <C-X><C-O>


" Doxע������
let g:DoxygenToolkit_briefTag_pre="@Synopsis  " 
let g:DoxygenToolkit_paramTag_pre="@Param " 
let g:DoxygenToolkit_returnTag="@Returns   " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="yin  wei" 
let g:DoxygenToolkit_licenseTag="My own license" 

" DOx  shotcut����
noremap <leader>dl  :DoxLic<CR>
noremap <leader>da  :DoxAuthor<CR>
noremap <leader>df  :Dox<CR>
noremap <leader>di  :DoxUndoc(DEBUG)<CR>
noremap <leader>dg  :DoxBlock<CR>

" ������NERDTree������;
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

noremap <leader>tree :NERDTreeToggle<CR>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" netrw setting
let g:netrw_winsize=30
nmap <silent> <leader>fe  :Sexplore!<cr>

" ��ָ��Ŀ¼����filenametags����ʹlookupfile������ļ���Ϊ����Դ
function! ProjectTagUpdateLookupFile(path)
  echo "generate lookupfile.tag"
  if filereadable(g:project_lookup_file)
    call delete(g:project_lookup_file)
  endif
  execute "cd " . a:path 
  let l:lookup_tags = ["!_TAG_FILE_SORTED	2	//2=foldcase//"] 

  if has("win32")
    let l:this_project_base_dir = substitute(a:path, "/", "//", "g") 
  else
    let l:this_project_base_dir = a:path
  endif
  let l:lookup_tags_file_string = system(g:project_find_program . " " . l:this_project_base_dir . " " . g:project_find_param)
  "let l:lookup_tags_file_string = system(g:project_find_program . " " . g:project_find_param)
  let l:lookup_tags_file_list = split(l:lookup_tags_file_string, '\n')
  let l:lookup_tags_file_list = sort(l:lookup_tags_file_list)

  let l:item = ""
  let l:count = 0 
  for l:item in l:lookup_tags_file_list
    let l:item = fnamemodify(l:item, ':t') . "\t" . l:item . "\t" . "1"
    let l:lookup_tags_file_list[l:count] = l:item
    let l:count = l:count + 1
  endfor 
  call extend(l:lookup_tags, l:lookup_tags_file_list)
  call writefile(l:lookup_tags, g:project_lookup_file)
  echo "generate lookupfile tag done"
endfunction
let g:LookupFile_MinPatLength = 2
"dir /B /S /A-D /ON *.fnc *.prc *.trg *.pck *.typ *.spc *.bdy *.tps *.tpb *.txt *.sql > filenametags
"dir /B /S /A-D /ON | findstr /V ".class$ .xls$ .doc$ .ppt$ .pdf$ .jpg$ .gif$ .zip$ .rar$ .jar$ .dat$ .mdb$ .dmp$ " > filenametags
let g:project_lookup_file = "D:/filenametags"
let g:project_find_program = "dir /B /S /A-D /ON"
let g:project_find_param = "*.fnc *.prc *.trg *.pck *.typ *.spc *.bdy *.tps *.tpb *.txt *.sql *.c *.cpp"
let g:this_project_base_dir = "."

let g:LookupFile_TagExpr = '"D:/filenametags"'
" ���õ�ǰλ��Ϊ���̵ĸ�Ŀ¼
function! SetHereTheRoot()
    call ProjectTagUpdateLookupFile('.')
endfunction
nmap <leader>rt :call SetHereTheRoot()<CR>
" ���û��������ȡָ��·����������Ϊ���̵ĸ�Ŀ¼
function! SetSpecifiedPathTheRoot()
    call ProjectTagUpdateLookupFile(input('�����빤�̸�Ŀ¼��·����'))
endfunction
nmap <leader>xroot :call SetSpecifiedPathTheRoot()<CR>
 
" ʹ��LookupFile���ļ�
nmap <leader>o :LookupFile<CR>

" cscope����

cs add ./cscope.out
map <leader>a :cs add ./cscope.out<CR>
map <leader>s :cs find s <C-R>=expand("<cword>")<CR>  
"����C���Է��ţ������Һ��������ꡢö��ֵ�ȳ��ֵĵط���
map <leader>g :cs find g <C-R>=expand("<cword>")<CR>  
"���Һ������ꡢö�ٵȶ����λ�ã�����ctags���ṩ�Ĺ��ܣ�
map <leader>d :cs find d <C-R>=expand("<cword>")<CR>  
"���ұ��������õĺ�����
map <leader>c :cs find c <C-R>=expand("<cword>")<CR>  
"���ҵ��ñ������ĺ�����
map <leader>t :cs find t <C-R>=expand("<cword>")<CR>  
"����ָ�����ַ�����
map <leader>e :cs find e <C-R>=expand("<cword>")<CR>  
"����egrepģʽ
map <leader>f :cs find f <C-R>=expand("<cword>")<CR>  
"���Ҳ����ļ�;
map <leader>i :cs find i <C-R>=expand("<cword>")<CR>  
"���Ұ������ļ����ļ�;
"

function! Do_CsTag()
	if executable("cscope") && has("cscope")
		if has("win32")
			silent! execute "!dir /s /b *.c,*.cpp,*.h,*.java,*.cs >> cscope.files"
		else
			silent! execute "!find . -name "*.h" -o -name "*.c" -o -name "*.cpp" -o -name "*.m" -o -name "*.mm" -o -name "*.java" -o -name "*.py" > cscope.files"
		endif
		silent! execute "!cscope -Rb"
		if filereadable("cscope.out")
			execute "cs add cscope.out"
		endif
	endif
endfunction

" һ�����tag�� cscope�� lookupfile���ã�
function!  PreConfig(ProjectRootDir)
	"tag����;
	execute "!ctags -R  --c++-kinds=+p --c-kinds=+p  --fields=+iaS --extra=+q  --sort=yes  -f ./tags  ".a:ProjectRootDir
	"Cscope����;
	call Do_CsTag()	
	"lookupfile
	call SetHereTheRoot()
endfunction

map <leader>cg    :call PreConfig(".")<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"----------------------����������� -----------------------------------------------

" -----------------------------���롢����--------------------------------------------
"��������
function! Compile_run( )
	execute "w"
	if &filetype == 'c'
		execute "!gcc  -Wall  % -g -o %<.exe"
	endif
	if &filetype =='cpp'
		execute	"!gcc  -lstdc++ -Wall -enable-auto-import % -g -o %<.exe"
		execute "!%<.exe"
	endif
	if &filetype == 'rc'
		execute "!rc /n /v  /fo  %<.res  %"
	endif
	if &filetype == 'asm'
		execute "!ml  /c  /coff  %<.obj  %"
		execute "!link /subsystem:windows %<.obj"
	endif
	if	&filetype == 'html'
		execute "!firefox"
	endif
	if	&filetype == 'python'
		execute "!python %"
	endif
	if &filetype == 'make'
		execute "!make"
	endif

endfunction


map <silent> <leader>cp  :call Compile_run( )<CR>

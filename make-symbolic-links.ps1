# enable windows developer mode first
# run as administrator

New-Item -Path ~\.vimrc -ItemType SymbolicLink -Value .vimrc
New-Item -Path ~\.vimrc_base.vim -ItemType SymbolicLink -Value .vimrc_base.vim
New-Item -Path ~\.ideavimrc -ItemType SymbolicLink -Value .ideavimrc

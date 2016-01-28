# vim
Repo intended to quickly setup VIM on any remote machine

## Install procedure
```bash
cd ~
git init .
git remote add -t \* -f origin https://github.com/bastijnv/vim.git
git checkout master
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## Result
![vim screenshot](vim.png)

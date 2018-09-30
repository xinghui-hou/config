# MAC work environment configuration


## brew
#### 修改brew国内源

```
替换brew.git:
cd "$(brew --repo)"
git remote set-url origin https://mirrors.ustc.edu.cn/brew.git

替换homebrew-core.git:
cd "$(brew --repo)/Library/Taps/homebrew/homebrew-core"
git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-core.git
```
## vim

### 使用VundleVim 插件方式管理vim
> 需要安装的依赖

```
brew install cmake ctags
go get -u github.com/jstemmer/gotags

```

```
Plugin 'junegunn/vim-plug'                                         
Plugin 'The-NERD-tree'                                             
Plugin 'ctrlpvim/ctrlp.vim'                                        
Plugin 'dyng/ctrlsf.vim'                                           
Plugin 'bling/vim-airline'                                         
Plugin 'zenorocha/dracula-theme'                                   
Plugin 'Lokaltog/vim-easymotion'                                   
Plugin 'Yggdroot/indentLine'                                       
Plugin 'kien/rainbow_parentheses.vim'                              
Plugin 'jiangmiao/auto-pairs'                                      
Plugin 'surround.vim'                                              
Plugin 'terryma/vim-expand-region'                                 
Plugin 'editorconfig/editorconfig-vim'                             
Plugin 'scrooloose/syntastic'                                      
Plugin 'mattn/gist-vim'                                            
Plugin 'airblade/vim-gitgutter'                                    
Plugin 'scrooloose/nerdcommenter'                                  
Plugin 'fatih/vim-go'                                              
Plugin 'vim-flake8'                                                
Plugin 'mattn/emmet-vim'                                           
Plugin 'Tagbar'                                                    
Plugin 'DoxygenToolkit.vim'                                       
Plugin 'rizzatti/dash.vim'                                         
Plugin 'honza/vim-snippets'                                        
Plugin 'Valloric/YouCompleteMe'
```

#### [YouCompleteMe](https://github.com/Valloric/YouCompleteMe/tree/e37923a752c7eee184cd6d96ac34e303fb7cfae9) 配置
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
```



## tmux 

## zsh

## bash

FROM alpine:latest

# install some general tooling
RUN apk --no-cache add \
    git \
    make \
    gcc \
    libc-dev \ 
    zsh \
    zsh-vcs \
    tmux \
    fzf \
    ripgrep \ 
    vim \ 
    neovim

# install omzsh
RUN sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# setup a few helpful directories
RUN mkdir ~/.config
RUN mkdir ~/repos

# copy over dotfiles (yes, this is inefficient) 
RUN git clone https://github.com/delfanbaum/dotfiles.git ~/repos/dotfiles
RUN echo "Copying dotfiles..."
RUN cp -vr ~/repos/dotfiles/nvim ~/.config
RUN cp -v ~/repos/dotfiles/vim/.vimrc ~/.vimrc
RUN cp -v ~/repos/dotfiles/omzsh/.zshrc ~/
RUN cp -v ~/repos/dotfiles/omzsh/custom_themes/refined.zsh-theme /root/.oh-my-zsh/custom/themes
RUN cp -vr ~/repos/dotfiles/tmux/. ~/
RUN cp -vr ~/repos/dotfiles/alacritty ~/.config  

# install packer
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# install neovim plugins
RUN nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# add custom theme and releavnt env variable so we know we're inside the container
RUN echo "export DOCKER_INFO='⎈ '" >> ~/.zshrc

# start the prompt when running the container
CMD ["zsh"]

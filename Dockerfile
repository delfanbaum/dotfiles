FROM alpine:latest

# install general tooling
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
    neovim \
    && sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# copy over dotfiles, export env variable so we know we're in docker at the CLI
RUN git clone https://github.com/delfanbaum/dotfiles.git ~/.config && \ 
    cp -v ~/.config/vim/.vimrc ~/.vimrc && \ 
    cp -v ~/.config/omzsh/.zshrc ~/ && \
    cp -v ~/.config/omzsh/custom_themes/refined.zsh-theme /root/.oh-my-zsh/custom/themes && \
    cp -vr ~/.config/tmux/. ~/ && \ 
    echo "export DOCKER_INFO='⎈ '" >> ~/.zshrc

# install packer and nvim plugins
RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim && \
    nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'

# start the prompt when running the container
CMD ["zsh"]

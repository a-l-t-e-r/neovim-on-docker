FROM alpine:latest
MAINTAINER Farsheed Ashouri <farsheed.ashouri@live.com>

########################################
# System Stuff
########################################

# Better terminal support
ENV TERM screen-256color

# Update and install

RUN apk add --update \
  git \
  neovim \
  elixir \
  yarn

COPY gitconfig /etc/gitconfig
COPY run /usr/local/bin/
RUN mkdir -p /root/.config/nvim
WORKDIR /root/.config/nvim
COPY init.vim .
RUN git clone https://github.com/VundleVim/Vundle.vim.git bundle/Vundle.vim
RUN nvim +PluginInstall +qall
RUN yarn global add prettier
VOLUME /workspace
WORKDIR /workspace


ENTRYPOINT ["sh", "/usr/local/bin/run"]

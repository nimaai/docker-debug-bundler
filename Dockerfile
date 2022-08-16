FROM ubuntu:20.04

SHELL ["/bin/bash", "-c"]

WORKDIR /root

RUN apt-get update 
RUN apt-get install --yes git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev vim 

RUN git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.10.2

RUN echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc
RUN echo ". $HOME/.asdf/completions/asdf.bash" >> ~/.bashrc

RUN source $HOME/.asdf/asdf.sh && asdf plugin add ruby
RUN source $HOME/.asdf/asdf.sh && asdf install ruby 2.6.6
RUN source $HOME/.asdf/asdf.sh && asdf global ruby 2.6.6

RUN git clone https://github.com/leihs/leihs_legacy.git

WORKDIR leihs_legacy

RUN git submodule update --init --recursive

RUN source $HOME/.asdf/asdf.sh && gem install bundler

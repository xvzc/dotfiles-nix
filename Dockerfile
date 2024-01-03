from ubuntu:24.04

ARG username=tester

RUN apt update
RUN apt install -y curl xz-utils neovim

RUN useradd -ms /bin/bash $username
RUN mkdir -m 0755 /nix && chown $username /nix

USER $username
WORKDIR /home/$username

RUN curl -L https://nixos.org/nix/install > install
RUN sh ./install --no-daemon
RUN rm ./install

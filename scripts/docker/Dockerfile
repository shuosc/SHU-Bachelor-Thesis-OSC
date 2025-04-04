FROM texlive/texlive:TL2024-historic-doc

LABEL maintainer="JamesNULLiu jamesnulliu@gmail.com"
LABEL version="1.0"

ARG DEBIAN_FRONTEND=noninteractive
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git apt-utils wget curl

RUN echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula \
    select true | debconf-set-selections && \
    apt-get install -y ttf-mscorefonts-installer

RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    git config --system --unset-all user.name || true && \
    git config --system --unset-all user.email || true && \
    git config --global --unset-all user.name || true && \
    git config --global --unset-all user.email || true


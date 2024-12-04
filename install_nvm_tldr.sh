#!/bin/bash

set -e

# npm 설치 여부 확인
if ! command -v npm &> /dev/null; then
    echo "npm이 설치되어 있지 않습니다. nvm 설치를 진행합니다."
    yum update -y

    # nvm 설치
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

    # nvm 환경 설정 적응
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    source ~/.bashrc

    # 최신 Node.js 설치
    nvm install --lts
    nvm install 20.0.0
    nvm install 18.0.0
    echo "node LTS, 20, 18 버전 설치를 완료하였습니다."

    # default 노드 버전 18.0.0 지정
    nvm alias default 18.0.0
    nvm use 18.0.0
    echo "node 18.0.0를 기본 노드로 설정하였습니다."

    # 설치 완료 확인
    if command -v npm &> /dev/null; then
        echo "npm 및 Node.js 설치 완료"

    node -v
    npm -v

npm install -g tldr
tldr


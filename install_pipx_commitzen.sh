#!/bin/bash

yum -y install python3-pip

python3 -m pip install --user pipx
python3 -m pipx ensurepath
sudo pipx ensurepath --global

# Install with commitzen
pipx ensurepath
pipx install commitizen
pipx upgrade commitizen

# Add to local project
# pip install --user -U commitzen

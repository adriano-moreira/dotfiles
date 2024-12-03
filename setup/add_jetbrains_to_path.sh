#!/bin/bash

if [ -f ~/.bashrc ];then
  echo 'export JETBRAINS_SCRIPTS_PATH="$HOME/.local/share/JetBrains/Toolbox/scripts"' >> ~/.bashrc
  echo 'export PATH="$JETBRAINS_SCRIPTS_PATH:$PATH"' >> ~/.bashrc
fi

if [ -f ~/.zshrc ];then
  echo 'export JETBRAINS_SCRIPTS_PATH="$HOME/.local/share/JetBrains/Toolbox/scripts"' >> ~/.zshrc
  echo 'export PATH="$JETBRAINS_SCRIPTS_PATH:$PATH"' >> ~/.zshrc
fi




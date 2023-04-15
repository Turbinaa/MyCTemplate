#!/bin/bash

echo -e "[\033[1;35m⚡Running\033[0m] "
TIMEFORMAT="%Us"
CPUS=$(nproc --all)
time {
     echo -e "\033[1;90mOutput:\033[0m"
     echo
     CODE="$(echo $(make --silent -j $((CPUS+1))) $?)"
     if [ $CODE -eq 0 ]; then
          echo -e "\033[1;90mRun:\033[0m"
          make run --quiet
          echo
     fi

     echo -ne "[\033[1;35m✨Done\033[0m] exited with code \033[1;90m$CODE\033[0m ⏳Time elapsed:\033[1;35m "
}
echo -ne "\033[0m"

#EOF
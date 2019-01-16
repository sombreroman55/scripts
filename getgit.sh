#!/bin/bash
# A quick script to download every public repository from my page.
# It can be used to download any user's repositories just by changing
# the NAME variable to be the desired users' name.

CNTX={users}; NAME={sombreroman55}; PAGE=1
curl "https://api.github.com/$CNTX/$NAME/repos?page=$PAGE&per_page=100" |
    grep -e 'git_url*' |
    cut -d \" -f 4 |
    xargs -L1 git clone

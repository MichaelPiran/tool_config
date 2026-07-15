

#!/usr/bin/env bash

selected=$(rg --files | fzf)

[ -z "$selected" ] && exit 0

vim ./"$selected"


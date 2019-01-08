# /usr/bin/env bash

# Setup the lightline color
PathWombat="~/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/wombat.vim"

ls ${PathWombat}

# if [[ -L ${PathWombat} ]]; then
#     rm ${PathWombat}; ln -s my-wombat.vim ${PathWombat}
# else
#     mv ${PathWombat} ${PathWombat}.old
#     ln -s my-wombat.vim ${PathWombat}
# fi

# Setup the vim colors directory
PathVimColor="~/.vim/colors"

echo ${PathVimColor}
ls ~/.vim/colors
ls ${PathVimColor}

# rm -rf ${PathVimColor}
# ln -s vim_colors ${PathVimColor}

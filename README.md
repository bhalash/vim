![Screenshot][5]

# Vimrc
This is my current [vimrc][1], gvimrc and filetype files. My day job and hobbies alike encompass JavaScript, Sass, Ruby and Rails development, which this set of configurations has evolved to encompass.

## Powerline
My vim config requires that the [patched Powerline fonts][6] be installed and your terminal configured to use them. You should expect strange behaviour if not, although I have tried to set graceful fallbacks.

## Setup
1. Move or otherwise rename your existing `.vim` folder:

    `mv ~/.vim ~/.vim.bak`

2. Recursively clone this repository to `.vim`:

    `git clone --recursive https://github.com/bhalash/vimrc.git .vim`

3. Run [Vundle's][2] `:PluginInstall` command:

    `vim +PluginInstall +qall`

## License
All of the code in the project is licensed under the GPLv3 or later.

> This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public > License, version 3, as published by the Free Software Foundation.
>
> This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
>
> You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

A copy of the license is included in the project's root directory. The file is named [LICENSE][3].

## Credit
[Mark Grealish](https://www.bhalash.com) is my name,  
And this is my configuration,  
[Vim][4] is my dwelling place,  
And this repo's its destination.

[1]: /vimrc
[2]: https://github.com/VundleVim/Vundle.vim
[3]: /LICENSE
[4]: https://github.com/vim/vim
[5]: /screenshot.png?raw=true
[6]: https://github.com/powerline/fonts

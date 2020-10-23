# vim-config

This is my .vimrc, which you're free to use however you see fit. It works for me  
but it may not work for you, and that's fine. My primary use cases, if not evident  
from the selected plugins, revolve around Bash/Python/Rust with a need for Git
integration.

There are not a plethora of keybindings assigned, because I'm rather comfortable with  
typing, or just using tab-completion. As time goes on, I'm sure I'll add some more  
custom mappings to take care of frequently tab-completed tasks.

### Update:

The .vimrc here had an unexpected consequence. Using vim as much more than an editor  
revealed more than a few pitfalls. The most notable among them is vim's poor handling  
of long-running tasks. Most apparent while serving as an environment for developing Rust,  
this led me, initially, to NeoVim. For the most part NeoVim resolved my issues and offered  
reprise from vim's own performance troubles. My resulting NeoVim init.vim is also in this  
repository.

The _ultimate_ result of all of this is that I now use [GNU/Emacs](https://www.gnu.org/software/emacs/).
When run with [EVIL](https://github.com/emacs-evil/evil), I will go as far as stating that GNU/Emacs is actually the best version of vim...

Even without EVIL mode enabled, GNU/Emacs is still just a better environment for my work.

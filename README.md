# dotfiles

## Installation

To set up the dotfiles on a new system, do the following:

```
git clone --bare git@github.com:ckorzen/dotfiles.git $HOME/.dotfiles
cd $HOME/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME submodule update --recursive --init
```

To use the `.bashrc_gen`, add the following at the end of your .bashrc:

```
if [ -f $HOME/.bashrc_gen ]; then
    . $HOME/.bashrc_gen
fi
```

## Managing dotfiles

Following an idea from [this thread](https://news.ycombinator.com/item?id=11070797) on Hackernews, the `.bashrc_gen` defines the following alias:

```
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
```

After sourcing your `.bashrc`, you can now do this:

```
dotfiles status
dotfiles add ~/.somecfg
dotfiles commit -m 'add some cfg'
```

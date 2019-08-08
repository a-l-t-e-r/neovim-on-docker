## Install:

```bash
sudo docker pull tradeboard/neovim
```

## Usage:
Add this line to your `~/.bashrc` or `~/.bash_profile` or `~/.zshrc`

```bash
alias edit='sudo docker run -ti --rm -v $(pwd):/workspace tradeboard/neovim'
```

## Bugs:
Feel free to open an issue

## Author:
Farsheed Ashouri

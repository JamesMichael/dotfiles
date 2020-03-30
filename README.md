# dotfiles

## Installation

1. Install [chezmoi](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md)
2. Install repo

```sh
chezmoi init https://github.com/JamesMichael/dotfiles.git
chezmoi apply
```

## Updates

```sh
chezmoi update
```

## Per-Machine data


To configure values per-machine, add `~/.config/chezmoi/chezmoi.toml`.

For example:

```
verbose = true
[data]
  locale = "C"
  path = "additional:paths"
```

Then, use a templated dotfile, e.g. `dot_zshrc.tmpl`.

Use Go templates to fill in the data:

```
export PATH="$HOME/.local/bin:{{with .path}}{{.}}:{{end}}$PATH"
```

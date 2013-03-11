# .vim Repository

## Installation

```bash
sh ./install.sh
```

## Update all

```bash
git submodule foreach git pull
```

## Removing Plugins
- Delete from .gitmodules
- Delete from .git/config
- `git rm --cached path_to_plugin`
- `git commit` and delete untracked files


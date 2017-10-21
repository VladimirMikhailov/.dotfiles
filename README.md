# dotfiles

## Install

```bash
  cd ~/.dotfiles
  sh script/setup
```

## Remove

```bash
  cd ~/.dotfiles
  sh script/unlink
```

## Components

There's a few special files in the hierarchy.

- `bin/`: Anything in `bin/` will get added to your `$PATH` and be made available everywhere.
- `topic/\*.bash`: Any files ending in `.bash` get loaded into your environment.
- `topic/path.bash`: Any file named `path.bash` is loaded first and is expected to setup `$PATH` or similar.
- `topic/completion.bash`: Any file named `completion.bash` is loaded last and is expected to setup autocomplete.
- `topic/\*.symlink`: Any files ending in `*.symlink` get symlinked into your `$HOME`. This is so you can keep all of those versioned in your dotfiles but still keep those autoloaded files in your home directory. These get symlinked in when you run `script/setup`.

# dotfiles

## install

**Warning:** Read [this script](https://github.com/elizabethmv/dotfiles/blob/master/script/install) before you curl.


In the root directory run:
```
bash -c "$(curl -fsSL raw.github.com/elizabethmv/dotfiles/master/script/install)"
```

## bootstrap (new machine)

**Warning:** Read [this script](https://github.com/elizabethmv/dotfiles/blob/master/script/bootstrap) before you curl.


In the root directory run:
```
bash -c "$(curl -fsSL raw.github.com/elizabethmv/dotfiles/master/script/bootstrap)"
```

## update
```
cd .dotfiles/
script/install
```

## sync vs code settings
After installing vs code (casked in the bootstrap script), download the [settings sync extension](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync). Download settings with `Shift + Option + D` and selecting the gist.

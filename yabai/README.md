# Yabai

## Installing

Why? Yabai 7.1.25 having conflict problem with native window manager & electron something.
This pin to version 7.1.23


## Steps

```bash

brew tap-new neitomic/local
cp ~/dotfiles/yabai/yabai.rb "$(brew --repository neitomic/local)/Formula/yabai.rb"
brew install neitomic/local/yabai
brew pin neitomic/local/yabai
```

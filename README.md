# tmux-osx-selected-input-source

This is a mini plugin for [TPM](https://github.com/tmux-plugins/tpm).

This plugin display current selected input source, but only 'U.S.' or not.<br>
And only work on recent OS X.

inspired by knakayama's blog aritcle & tmux plugins<br>

* http://dev.classmethod.jp/devenv/mastering-tmux-with-tpm-plugin/
* https://github.com/search?q=user%3Aknakayama+tmux


## Requirements

* [OS X](http://www.apple.com/osx/)
* [tmux](https://tmux.github.io/)
* [tpm](https://github.com/tmux-plugins/tpm)


## Install

[Install tpm](https://github.com/tmux-plugins/tpm#installation) and add the following line to your $HOME/.tmux.conf.

```shell
set-option -g @plugin 'oppara/tmux-osx-selected-input-source'
```


## Usage

Add #{selecte_input_source} format string to your existing status-left or status-right tmux option.

i.e.

```shell
set-option -g status-right '#{selecte_input_source}'
```


## LICENSE

[MIT](https://oppara.mit-license.org/)



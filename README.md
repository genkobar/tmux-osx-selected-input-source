# tmux-osx-selected-input-source

This is a mini plugin for [TPM](https://github.com/tmux-plugins/tpm).

This plugin display current selected input source, but only 'Japanese' or not.<br>
And only work on recent OS X. 

U.S.
![U.S.](https://cloud.githubusercontent.com/assets/10661/25958881/eeaaecf8-36ac-11e7-8650-59921c53ddfa.png)

ja
![ja](https://cloud.githubusercontent.com/assets/10661/25958905/057d16e0-36ad-11e7-9c31-d2bbf6c5bfe6.png)

my input sources
![my input sources](https://cloud.githubusercontent.com/assets/10661/25958632/1e8180b4-36ac-11e7-896c-0e3086391eb0.png)

----

inspired by knakayama's blog aritcle & tmux plugins<br>

* http://dev.classmethod.jp/devenv/mastering-tmux-with-tpm-plugin/
* https://github.com/search?q=user%3Aknakayama+tmux


## Requirements

* OS X (Yosemite, El Capitan)
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



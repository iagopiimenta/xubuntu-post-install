(X)ubuntu Post Install Script
=============================

This project provides a set of shell scripts to be run after a fresh install of an Ubuntu(-based) OS.

Feel free to copy, improve and distribute.

## What it provides me

- Dropbox

- Sublime text 3

- Vim

- Git(last version)

- Ruby(dependencies, rbenv, ruby-build, rbenv-update)

- Tmux & Tmuxinator

- Openvpn

- Mongodb 3

- Redis

- SpamAssassin

- sshpass

- ImageMagick & GraphicsMagick

- Google Chrome

- OpenJDK 8

- Vlc

- Gimp

- Rar

- Skype

- Spotify

- Transmission

- (x)ubuntu-restricted-extras

- [Rotate](https://github.com/iagopiimenta/xubuntu-post-install/blob/master/templates/my_bashrc#L33) ~/.bash_history* to Dropbox folder `~/Dropbox/machine-backups/$(hostname)/bash_histories`

- [Sync](https://github.com/iagopiimenta/xubuntu-post-install/blob/master/setup-sublime-backup.sh) sublime text configuration, preferences to Dropbox folder `~/Dropbox/machine-backups/Sublime/User`

- Customize ~/.bashrc and ~/tmux.conf

- Run `rbenv update` every beginning of month.

## Usage

Run from source folder:

    ./xubuntu-post-install-script.sh

## TODO

Migrate to https://github.com/snwh/ubuntu-post-install format.

## License

Please see [LICENSE](https://github.com/iagopiimenta/xubuntu-post-install/blob/master/LICENSE) for licensing details.

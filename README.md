# dot/config files for Lightsail
by Sungjin Han <meinside@gmail.com>

## Description

My personal dot/config files for Lightsail instance.

---

## Install

```
$ cd ~
$ wget -O - "https://raw.github.com/meinside/lightsail-dotfiles/master/bin/prep.sh" | bash
```

then this repository will be cloned to the user's home directory.

## Configure

### install essential packages

```bash
$ sudo apt-get install zsh tmux fail2ban nginx
```

### locale and timezone

```bash
$ sudo locale-gen ko_KR.UTF-8
$ sudo dpkg-reconfigure tzdata
```


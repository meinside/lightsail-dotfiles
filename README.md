# dot/config files for Lightsail
by Sungjin Han <meinside@gmail.com>

## Description

My personal dot/config files for Lightsail (or Oracle Cloud) instances based on Ubuntu LTS images.

---

## Install

```
$ cd ~
$ wget -O - "https://raw.github.com/meinside/lightsail-dotfiles/master/bin/prep.sh" | bash
```

then this repository will be cloned to the user's home directory.

## Configure

### make swap

```bash
$ sudo dd if=/dev/zero of=/swapfile bs=1024 count=1M
$ sudo chmod 0600 /swapfile
$ sudo mkswap /swapfile
```

and append following line to `/etc/fstab`:

```
/swapfile swap swap defaults 0 0
```

### install essential packages

```bash
$ sudo apt-get install zsh tmux fail2ban nginx
```

### locale and timezone

```bash
$ sudo locale-gen ko_KR.UTF-8
$ sudo dpkg-reconfigure tzdata
```


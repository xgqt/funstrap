# Funstrap

<p align="center">
    <a href="https://gitlab.com/xgqt/funstrap/pipelines">
        <img src="https://gitlab.com/xgqt/funstrap/badges/master/pipeline.svg">
    </a>
    <a href="https://gitlab.com/xgqt/funstrap/commits/master.atom">
        <img src="https://img.shields.io/badge/feed-atom-orange.svg">
    </a>
    <a href="./LICENSE">
        <img src="https://img.shields.io/badge/license-ISC-blue.svg">
    </a>
</p>

Bootstrap a basic funtoo tarball.


# Installation

# Git

As user:

```sh
git clone --recursive --verbose https://gitlab.com/xgqt/funstrap
cd funstrap
sudo make install
```


# Gentoo

As root:

```sh
emerge -1nv app-eselect/eselect-repository
eselect repository enable myov
emaint sync -r myov
emerge -av --autounmask dev-util/funstrap
```

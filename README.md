CU Cyber Wiki
=============

In this repository are the markdown sources to the wiki on the CU Cyber website. Up-to-date builds of the wiki are available at [https://cucyber.net/wiki/](https://cucyber.net/wiki/).


## Dependencies

* make
* git
* rsync
* python3
* pandoc
* pandocfilters
* python
* python-watchdog (optional; for automatic rebuilding on presentation change)


### Debian/Ubuntu/Kali

```sh
$ sudo apt install make git rsync python3 pandoc python3-pandocfilters python-watchdog
```


### RedHat/CentOS

```sh
$ sudo yum install epel-release
$ sudo yum install make git rsync python34 pandoc
$ sudo pip3 install pandocfilters
```


### Fedora

```sh
$ sudo dnf install make git rsync pandoc python3-pandocfilters python2-watchdog
```


### Arch

```sh
$ sudo pacman -S make git rsync pandoc python-pandocfilters python-watchdog
```


### Gentoo

```sh
$ sudo emerge dev-vcs/git dev-lang/python:3.4 app-text/pandoc dev-python/watchdog
$ sudo pip3 install pandocfilters
```


### macOS

Requires [Homebrew](https://brew.sh/). Use `gmake` instead of `make`.

```sh
$ brew install make git rsync python3 pandoc
$ pip install watchdog
$ pip3 install pandocfilters
```


## Building

To build all of the presentations into a hostable directory, edit the 'makefile' as desired and run `make`. All of the necessary files that should be put on a web server will be created in the 'public' directory.


## Testing

To build all of the presentations and host them on a temporary local server, edit the 'makefile' as desired and run `make serve`. Open your web browser to 'http://localhost:8080/'.


## Updating

To build all of the presentions and upload them to the website automatically, edit the 'makefile' as desired and for the website git repository location and run `make update`. You must have push access to the repository at the specified directory.


## Cleaning

To clean out any generated files, run `make clean`.

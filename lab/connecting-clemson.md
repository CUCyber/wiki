---
title: Connecting to Clemson
...

## Before You Begin

See the table of contents on the right for links to connecting from your platform.


## Linux Instructions

### Installing the OpenConnect Client

**Fedora**

```
sudo dnf install openconnect
```

**Ubuntu**

```
sudo apt install openconnect
```

**Arch**

```
sudo pacman -S openconnect
```


### Connecting to CUVPN

In a terminal, run the following command. Enter your username, password, and your second password is "push".

```
sudo openconnect https://cuvpn.clemson.edu/
```


## Windows Instructions

### Installing the OpenConnect Client

* Download and install the [OpenConnect GUI](https://github.com/openconnect/openconnect-gui/releases).

![](lab/openconnect-win32-download.png){ width=512px }


### Connecting to CUVPN

Use the OpenConnect GUI with 'https://cuvpn.clemson.edu/' as the gateway. Enter your username, password, and your second password is "push".


## macOS Instructions

### Installing the OpenConnect Client

* Download and install [Homebrew](https://brew.sh/) then run the following commands.

```
brew tap horar/openconnect-gui
brew install openconnect-gui
# after an upgrade do the following two commands again
rm -f /Applications/OpenConnect-GUI.app
ln -s /usr/local/Cellar/openconnect-gui/*/OpenConnect-GUI.app /Applications/OpenConnect-GUI.app
```

### Connecting to CUVPN

Use the OpenConnect GUI with 'https://cuvpn.clemson.edu/' as the gateway. Enter your username, password, and your second password is "push".

* Click the cog dropdown

![](lab/openconnect-add.png){ width=256px }

* Click "New Profile"

![](lab/openconnect-new.png){ width=256px }

* Enter "https://cuvpn.clemson.edu/" as the gateway

![](lab/openconnect-cuvpn.png){ width=256px }

* Click "Save & Connect"

![](lab/openconnect-save.png){ width=256px }

* Click "Accurate Information"

![](lab/openconnect-accurate.png){ width=256px }

* Enter Clemson username

![](lab/openconnect-username.png){ width=256px }

* Enter Clemson password

![](lab/openconnect-password.png){ width=256px }

* Enter "push"

![](lab/openconnect-push.png){ width=256px }

* Accept the Duo push on your mobile phone

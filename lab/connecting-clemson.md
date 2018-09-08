---
title: Connecting to Clemson
...

## Installing the OpenConnect Client

### Linux Instructions

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


### Windows Instructions

* Download and install the [OpenConnect GUI](https://github.com/openconnect/openconnect-gui/releases).


### MacOS Instructions

* Download and install the [OpenConnect GUI](https://github.com/openconnect/openconnect-gui/releases).


## Connecting to the CUVPN

### Linux Instructions

#### Connecting to Clemson

In a terminal, run the following command. Enter your username, password, and your second password is "push".

```
sudo openconnect https://cuvpn.clemson.edu/
```


### Mac Instructions

#### Connecting to Clemson

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

* EnterClemson password

![](lab/openconnect-password.png){ width=256px }

* Enter "push"

![](lab/openconnect-push.png){ width=256px }

* Accept the Duo push on your mobile phone


### Windows Instructions

#### Connecting to Clemson

Use the OpenConnect GUI with 'https://cuvpn.clemson.edu/' as the gateway. Enter your username, password, and your second password is "push".

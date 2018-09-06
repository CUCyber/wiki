---
title: Accessing VM Console
...

## Install Remote Viewer


### Linux Instructions

**Fedora**

```
sudo dnf install virt-viewer
```

**Ubuntu**

```
sudo apt install virt-viewer
```

**Arch**

```
sudo pacman -S virt-viewer
```


### Windows Instructions

* Download and install the installer file for "virt-viewer" called "Win x64 MSI" at the [Virtual Machine Manager](https://virt-manager.org/download/) download page.


### MacOS Instructions

* Download and install [Homebrew](https://brew.sh/) then run the following commands.

```
brew tap jeffreywildman/homebrew-virt-manager
brew install virt-viewer
```


## Navigate to oVirt Web Interface

Go to [https://architect.lab.cucyber.net/](https://architect.lab.cucyber.net/) in your favorite web browser. Click on "VM Portal" as shown below.

![](lab/vmportal.png)


## Set Profile and Login

Select the "lab.cucyber.net" profile from the dropdown as shown below and enter your lab credentials.

![](lab/profile.png)


## Open Console

Open the console by clicking the console icon as shown below. This will download a file called "console.vv". Open this in the Remote Viewer application either by double clicking the file or from the command line in Linux/macOS `remote-viewer ~/Downloads/console.vv`.

![](lab/vm.png)

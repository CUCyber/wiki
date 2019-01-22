---
title: Connecting to the Lab
...

## Installing the OpenVPN Client


### Linux Instructions

**Fedora**

```
sudo dnf install openvpn
```

**Ubuntu**

```
sudo apt install openvpn
```

**Arch**

```
sudo pacman -S openvpn
```


### Windows Instructions

* Download and install the [official OpenVPN client](https://openvpn.net/index.php/open-source/downloads.html) named "openvpn-install-[ver].exe".

![](lab/openvpn-download.png){ width=512px }


### macOS Instructions

* Download and install the [TunnelBlick](https://tunnelblick.net/) OpenVPN client.

![](lab/tunnelblick-download.png){ width=512px }


## Connecting to the Lab VPN

**If and only if you are off campus**, you will need to connect to Clemson's VPN using OpenConnect. Follow the instructions [here](lab/connecting-clemson) if that is the case.

First you must download the OpenVPN config file for your account. The config file is in an email titled "CU Cyber Lab Access" from cyber@clemson.edu. Check your email and download the file.


### Linux Instructions

#### Connect to the Lab

In a terminal, navigate to the folder with your personal OpenVPN config file ending in .ovpn and run the following command.

```
sudo openvpn --config <username>.ovpn
```


### macOS Instructions

#### Connect to the Lab

Use the Tunnelblick client to load your OpenVPN config file ending in .ovpn.


#### First Time

* Double click your .ovpn file and enter your macOS password into the dialog

![](lab/ovpn-click.png){ width=256px }


#### Every Time

* Click the Tunnelblick icon in the menu bar

![](lab/tunnelblick.png){ width=256px }

* Click "Connect [username]" in the dropdown menu

![](lab/tunnelblick-username.png){ width=256px }


### Windows Instructions

#### Connect to the Lab

Use the OpenVPN client to load your OpenVPN config file ending in .ovpn.

* Open the OpenVPN GUI

![](lab/openvpn-gui.png){ width=256px }


#### First Time

* **If a dialog pops up about no connection profiles found, click "OK"**

* Right click on the OpenVPN client in the system tray

![](lab/openvpn-tray.png){ width=256px }

* Click on "Import Profile"

![](lab/openvpn-import.png){ width=256px }

* Navigate to your .ovpn file and double click it

![](lab/ovpn-windows.png){ width=256px }


#### Every Time

* Right click on the OpenVPN client in the system tray

![](lab/openvpn-tray.png){ width=256px }

* Click on "Connect"

![](lab/openvpn-connect.png){ width=256px }


## Testing Connection to the Lab

At this point you should be connected to the lab VPN. To test your connectivity execute the following command.


### Linux/macOS

```
ping -c 4 oracle.lab.cucyber.net
```

If the ping succeeds then you've successfully connected to the VPN and your DNS is working as intended!


### Windows

```
ping oracle.lab.cucyber.net
```

If the ping succeeds then you've successfully connected to the VPN and your DNS is working as intended!


## Change Your Password

After successfully connecting to the lab environment, you will need to [change your password](lab/changing-password).

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

* Download and install the [official OpenVPN client](https://openvpn.net/index.php/open-source/downloads.html).


### MacOS Instructions

* Download and install the [TunnelBlick](https://tunnelblick.net/) OpenVPN client.


## Connecting to the Lab VPN

**If and only if you are off campus**, you will need to connect to Clemson's VPN using OpenConnect. Follow the instructions [here](lab/connecting-clemson) if that is the case.


### Linux Instructions

#### Connect to the Lab

In a terminal, navigate to the folder with your personal OpenVPN config file ending in .ovpn and run the following command.

```
sudo openvpn --config <username>.ovpn
```


### Mac Instructions

#### Connect to the Lab

Use the Tunnelblick client to load your OpenVPN config file ending in .ovpn.


### Windows Instructions

#### Connect to the Lab

Use the OpenVPN client to load your OpenVPN config file ending in .ovpn.


## Testing Connection to the Lab

At this point you should be connected to the lab VPN. To test your connectivity execute the following command.

```
ping -c 4 oracle.lab.cucyber.net
```

If the ping succeeds then you've successfully connected to the VPN and your DNS is working as intended!


## Change Your Password

After successfully connecting to the lab environment, you will need to [change your password](lab/changing-password).

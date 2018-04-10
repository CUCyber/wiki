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

* *TODO*

### MacOS Instructions

* Download and install the [TunnelBlick](https://tunnelblick.net/index.html) VPN client.

## Connecting to the Lab VPN

**Note:**

The lab can only be accessed from Clemson's network. If you're off campus you will have to connect to the Clemson VPN first before attempting to connect to the lab VPN. Instructions for connecting to the Clemson VPN can be found [here.](https://hdkb.clemson.edu/phpkb/article.php?id=64)

### Linux Instructions

#### Connect to the OpenVPN Server

Open a terminal and navigate to the folder with your personal OpenVPN config file ending in .ovpn.

```
sudo openvpn --config <yourname>.ovpn
```

This will connect you to the lab VPN.

#### Testing Connection to the Lab

At this point you should be connected to the lab VPN. To test your connectivity execute the following command in a terminal.

```
ping -c 5 architect.lab.cucyber.net
```

If the ping succeeds then you've successfully connected to the VPN and your DNS is working as intended! However, if the ping fails then continue to the next section on troubleshooting DNS.

### Mac Instructions

* Use TunnelBlick

### Windows Instructions



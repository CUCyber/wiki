---
title: Connecting to the Lab
...

## Installing the OpenVPN Client


### Linux Instructions

**Fedora**

```
sudo dnf install openconnect openvpn
```

**Ubuntu**

```
sudo apt install openconnect openvpn
```

**Arch**

```
sudo pacman -S openconnect openvpn
```


### Windows Instructions

* Download and install the [OpenConnect GUI](https://github.com/openconnect/openconnect-gui/releases) and the [official OpenVPN client](https://openvpn.net/index.php/open-source/downloads.html).


### MacOS Instructions

* Download and install the [OpenConnect GUI](https://github.com/openconnect/openconnect-gui/releases) and the [TunnelBlick](https://tunnelblick.net/) OpenVPN client.


## Connecting to the Lab VPN

### Linux Instructions

#### Connecting to Clemson

If you are off campus, you will need to connect to Clemson's VPN. In a terminal, run the following command.

```
sudo openconnect https://cuvpn.clemson.edu/
```


#### Connect to the Lab

In a terminal, navigate to the folder with your personal OpenVPN config file ending in .ovpn and run the following command.

```
sudo openvpn --config <username>.ovpn
```


### Mac Instructions

#### Connecting to Clemson

If you are off campus, you will need to connect to Clemson's VPN. Do this using the OpenConnect GUI and using 'https://cuvpn.clemson.edu/' as the gateway.


#### Connect to the Lab

Use the Tunnelblick client to load your OpenVPN config file ending in .ovpn.


### Windows Instructions

#### Connecting to Clemson

If you are off campus, you will need to connect to Clemson's VPN. Do this using the OpenConnect GUI and using 'https://cuvpn.clemson.edu/' as the gateway.


#### Connect to the Lab

Use the OpenVPN client to load your OpenVPN config file ending in .ovpn.


## Testing Connection to the Lab

At this point you should be connected to the lab VPN. To test your connectivity execute the following command.

```
ping -c 4 oracle.lab.cucyber.net
```

If the ping succeeds then you've successfully connected to the VPN and your DNS is working as intended!


## Change your password

All users are strongly encouraged to change their domain login passwords from the one that was generated and emailed to you.

To do this once connected to the lab, login to [https://keymaker.lab.cucyber.net/](https://keymaker.lab.cucyber.net/).

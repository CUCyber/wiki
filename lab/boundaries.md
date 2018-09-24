---
title: Boundaries within the Lab
...


## Networks always off-limits

These are networks that you are never permitted to communicate with under any circumstances.

* Clemson's Network
* The Management VLAN within the lab network
* Someone else's VLAN within the lab network^[1]^

^[1]^ Unless you are given permission to do so


## Networks you are permitted to access but not permitted to attack

* The publicly routable internet
* The VPN VLAN you are automatically added to when log in via the VPN
* The oVirt web interface for managing VMs
* The FreeIPA web interface for changing your password


## Networks you are permitted to attack

* VLANS within the lab of which you are the owner or given permission to perform attacks on


##  Logical Network Diagram

Here is a rough logical network diagram of the lab. Hopefully this may help clarify things. 

![](lab/boundaries.png){ width=100% }

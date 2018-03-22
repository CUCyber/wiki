---
title: Boundaries within the Lab
...

## Introduction and Ethics

The Cyber Warfare Space is a virtual lab and penetration testing environment hosted by the student organization, CU Cyber.
Many of the scans and attacks you may perform inside of the lab are **illegal** to perform on networks you are not **explicitly** authorized to perform them on.
Examples of networks where these scans and attacks would be **illegal** are public networks such as coffee houses, Clemson's network, and the open internet.
If you do not have explicit written consent to perform these tasks, or you wander outside the scope of your agreement, then you may find yourself subject to legislation such as the Computer Fraud and Abuse Act of 1986 and others.

Any attempt to circumvent the barriers we have in place to protect both you and networks you are not permitted to access will result in immediate suspension of access to the lab and lab network while the incident is being investigated. 
In addition, details of incident will be elevated to the [Security Operations Center at Clemson University](https://ccit.clemson.edu/about/departments/information-security-privacy/security-operations-center/).

In the remainder of the article, we will attempt to clarify what sections of the network are completely restricted, which sections can be accessed but not attacked, and lastly which portions you are permitted to launch attacks on.

## Networks always off-limits

These are networks that you are never permitted to communicate with under any circumstances.

* Clemson's Network
* The Management VLAN within the lab network
* Someone else's VLAN within the lab network^[1]^

^[1]^ Unless you are given permission to do so

## Networks you are permitted to access but not permitted to attack

* The publicly routable internet
* The VPN VLAN you are automatically added to when log in via the VPN
* The oVirt web interface for creating and managing VMs

## Networks you are permitted to attack

* VLANS within the lab of which you are the owner or given permission to perform attacks on

##  Logical Network Diagram

Here is a rough logical network diagram of the lab. Hopefully this may help clarify things. 

---

![Cyber Warfare Space logical network digram - legend](logical-lab-legend.png){ width=100% }

---

![Cyber Warfare Space logical network digram](logical-lab.png){ width=100% }
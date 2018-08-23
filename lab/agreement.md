---
title: Cyber Warfare Space Agreement
...


## Introduction and Ethics

The Cyber Warfare Space is a virtual lab and penetration testing environment hosted by CU Cyber and the Watt Family Innovation Center.
Many of the scans and attacks you may perform inside of the lab are **illegal** to perform on networks you are not **explicitly** authorized to perform them on.
Examples of networks where these scans and attacks would be **illegal** are public networks such as coffee houses, Clemson's network, and the open internet.
If you do not have explicit written consent to perform these tasks, or you wander outside the scope of your agreement, then you may find yourself subject to legislation such as the Computer Fraud and Abuse Act of 1986 and others.

The following article exists as an agreement between a user of the Cyber Warfare Space and CU Cyber on appropriate and legal use of the Cyber Warfare Space.


## Activities

Activities between VLANs are regulated based on the boundaries outlined below.
Within confines of the law, there is no activity within a **single personal VLAN** that is not allowed.


## Boundaries

No communication is allowed between the lab environment and any of Clemson's networks.
Only traffic internal to the lab and between the public internet is allowed.

Networks and services in the lab that cannot be attacked are any computer on any management network, `10.0.0.0-10.0.63.255` and `10.255.0.0-10.255.255.255`, or any VPN network, `10.0.64.0-10.0.127.255`.
This includes but is not limited to the virtual machine management interface, the user identity management interface, and the VPN server.

You are not allowed to access any VLAN except for those of the management networks `10.0.0.0-10.0.63.255`, VLANs you are assigned, and VLANs for which you have explicit written approval to access.

The lab is a fully contained environment and no malicious activity, including but not limited to scans, denial of service attacks, exfiltration, exploitation, and distribution of malware, is allowed across the border of the lab environment.
Non-malicious traffic, such as software downloads, is allowed to cross the border of the lab environment.
The border of the lab environment is defined as the point at which traffic is NATed from the local `10.0.0.0/8` network to Clemson's `130.127.0.0/16` network.


## Incidents

Any attempt to circumvent the barriers put in place to protect both you and networks you are not permitted to access will result in immediate suspension of access to the lab and lab network while the incident is being investigated. 
In addition, details of the incident will be elevated to the [Security Operations Center at Clemson University](https://ccit.clemson.edu/about/departments/information-security-privacy/security-operations-center/) where it will be handled per university policy and if necessary, elevated to the appropriate authorities.


## Approval

Approval to use the lab will be handled on a case-by-case basis by the officers of CU Cyber and those officers reserve the right to deny and revoke access for any reason.

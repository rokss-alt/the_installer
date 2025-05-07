When managing firewalls on Linux, it’s important to understand how **tables** work in `iptables`. Tables help organize firewall rules based on the kind of traffic they handle. Each table has its own job and is used to manage a specific type of network activity. This helps keep the rules organized and makes it easier to control traffic effectively.



| **Table Name** | **Description**                                                             | **Built-in Chains**                             |
| -------------- | --------------------------------------------------------------------------- | ----------------------------------------------- |
| `filter`       | Used to filter network traffic based on IP addresses, ports, and protocols. | INPUT, OUTPUT, FORWARD                          |
| `nat`          | Used to modify the source or destination IP addresses of network packets.   | PREROUTING, POSTROUTING                         |
| `mangle`       | Used to modify the header fields of network packets.                        | PREROUTING, OUTPUT, INPUT, FORWARD, POSTROUTING |
In `iptables`, _rules_ are used to decide how to handle network traffic. Each rule checks for specific conditions, and if a packet matches those conditions, a certain action is taken.

### How Rules Work

Rules are added to _chains_ using the `-A` option (short for "append") followed by the name of the chain. For example:

```
iptables -A INPUT -s 192.168.1.100 -j DROP

```

This adds a rule to the `INPUT` chain that drops any packets from `192.168.1.100`.

### Rule Structure

Every rule has:

- **Criteria (or matches)**: These are conditions the packet must meet, such as:
    
    - Source/destination IP
        
    - Port numbers
        
    - Protocol (like TCP or UDP)
        
- **Target**: This is the action taken when a packet matches the rule. Common targets include:
    
    - `ACCEPT`: allow the packet
        
    - `DROP`: silently discard the packet
        
    - `REJECT`: block the packet and send an error message back
        
    - `LOG`: log the packet details
        
    - `DNAT`/`SNAT`: modify the destination/source IP address
        

You can also edit or delete rules using other options, like `-D` for delete or `-R` for replace.

|**Target Name**|**Description**|
|---|---|
|`ACCEPT`|Allows the packet to pass through the firewall and continue to its destination|
|`DROP`|Drops the packet, effectively blocking it from passing through the firewall|
|`REJECT`|Drops the packet and sends an error message back to the source address, notifying them that the packet was blocked|
|`LOG`|Logs the packet information to the system log|
|`SNAT`|Modifies the source IP address of the packet, typically used for Network Address Translation (NAT) to translate private IP addresses to public IP addresses|
|`DNAT`|Modifies the destination IP address of the packet, typically used for NAT to forward traffic from one IP address to another|
|`MASQUERADE`|Similar to SNAT but used when the source IP address is not fixed, such as in a dynamic IP address scenario|
|`REDIRECT`|Redirects packets to another port or IP address|
|`MARK`|Adds or modifies the Netfilter mark value of the packet, which can be used for advanced routing or other purposes|

Let us illustrate a rule and consider that we want to add a new entry to the INPUT chain that allows incoming TCP traffic on port 22 (SSH) to be accepted.
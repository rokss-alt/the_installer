In `iptables`, _chains_ are used to organize rules that control how network traffic is filtered or changed. There are two types of chains:

- **Built-in chains**
    
- **User-defined chains**
    

### Built-in Chains

These are created automatically when a table is made. Each table has its own set of built-in chains:

- The **filter** table has:
    
    - `INPUT`: filters traffic going _into_ the system
        
    - `OUTPUT`: filters traffic going _out_ from the system
        
    - `FORWARD`: filters traffic that’s passing _through_ the system from one interface to another
        
- The **nat** table has:
    
    - `PREROUTING`: changes the _destination_ IP before routing decisions are made
        
    - `POSTROUTING`: changes the _source_ IP after routing decisions are made
        
- The **mangle** table has:
    
    - `PREROUTING`, `INPUT`, `FORWARD`, `OUTPUT`, and `POSTROUTING`: these are used to change packet headers (like QoS or TTL) at different points in the packet's path
        

### User-defined Chains

These are custom chains that you can create to better organize rules. You can add them to any of the main tables. For example:

- If you have several web servers with similar rules, you can create one user-defined chain and reuse it.
    
- You could make a chain just to handle traffic going to port 80 (HTTP), and write all your HTTP filtering rules there.
    

This helps keep your firewall rules clean, organized, and easier to manage.
Security logs record important events and are stored in different files depending on the tool or service. For example:

- **Fail2ban** logs failed login attempts in `/var/log/fail2ban.log`
    
- **UFW firewall** activity is logged in `/var/log/ufw.log`
    
- General security events, like changes to system files or settings, often go to:
    
    - `/var/log/syslog`
        
    - `/var/log/auth.log`
        

As penetration testers, we use these logs to find patterns or events that might signal a security issue. By analyzing this data, we can dig deeper into the system and check for weaknesses or ways to exploit them.

### Why Log Locations Matter

Knowing where logs are stored helps during security assessments. If we understand where and how Linux logs security events, we can better detect problems or possible attack paths.

### How to Read and Analyze Logs

You can view and analyze logs using:

- **GUI tools** in most Linux desktop environments
    
- **Command-line tools** like:
    
    - `tail` – to follow live log updates
        
    - `grep` – to search for specific entries
        
    - `sed` – to extract or edit log content
        

Proper log analysis helps spot system issues, detect security breaches, and uncover unusual activity.
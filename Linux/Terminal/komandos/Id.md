Panasus i whoami, bet duoda info apie kokias prieigas vartotojas turi


uid=1000(rokas) gid=1000(rokas) groups=1000(rokas),3(sys),10(wheel),983(rfkill)

### Breakdown:

1. **`uid=1000(rokas)`**
    
    - `uid`: **User ID**
        
    - `1000`: The numeric identifier for your user (`rokas`). Typically, the first non-root user gets UID 1000.
        
    - `rokas`: Your username.
        
2. **`gid=1000(rokas)`**
    
    - `gid`: **Group ID**
        
    - `1000`: The numeric ID of your **primary group** (by default, users have a primary group with the same name).
        
    - `rokas`: The name of the primary group.
        
3. **`groups=1000(rokas),3(sys),10(wheel),983(rfkill)`**
    
    - Lists all groups you are a member of:
        
        - **`1000(rokas)`** → Your primary group.
            
        - **`3(sys)`** → System-related group, usually gives access to system settings or hardware.
            
        - **`10(wheel)`** → A **privileged group** that typically allows **sudo/root access**.
            
        - **`983(rfkill)`** → A group related to **controlling wireless network interfaces** (RFKill controls radio transmitters like Wi-Fi and Bluetooth).
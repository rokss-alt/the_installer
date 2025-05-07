Logs store information about what specific applications are doing on a system. Each app often has its own log file—for example:

- Apache web server logs: `/var/log/apache2/error.log`
    
- MySQL database logs: `/var/log/mysql/error.log`
    

These logs are especially useful when focusing on particular applications like web servers or databases, because they show how those apps are handling data. Reading them can help us find vulnerabilities or misconfigurations.

### Types of Useful Logs

- **Access logs**: Show who is requesting data, when, and from where. They’re useful for tracking activity on web servers.
    
- **Audit logs**: Record system-level changes, like who changed a configuration file or tried to access protected resources.
    

### Why These Logs Matter

Access and audit logs are key for:

- Catching unauthorized access attempts
    
- Detecting suspicious behavior (like data theft)
    
- Spotting changes to critical system files
    
- Meeting security and compliance standards
    

By analyzing these logs, we can detect and respond to attacks or misuses of the system before they cause serious damage.


#### Access Log Entry

System Logs

```shell-session
2023-03-07T10:15:23+00:00 servername privileged.sh: htb-student accessed /root/hidden/api-keys.txt
```

In this log entry, we can see that the user `htb-student` used the `privileged.sh` script to access the `api-keys.txt` file in the `/root/hidden/` directory. On Linux systems, most common services have default locations for access logs:

|**Service**|**Description**|
|---|---|
|`Apache`|Access logs are stored in the /var/log/apache2/access.log file (or similar, depending on the distribution).|
|`Nginx`|Access logs are stored in the /var/log/nginx/access.log file (or similar).|
|`OpenSSH`|Access logs are stored in the /var/log/auth.log file on Ubuntu and in /var/log/secure on CentOS/RHEL.|
|`MySQL`|Access logs are stored in the /var/log/mysql/mysql.log file.|
|`PostgreSQL`|Access logs are stored in the /var/log/postgresql/postgresql-version-main.log file.|
|`Systemd`|Access logs are stored in the /var/log/journal/ directory.|
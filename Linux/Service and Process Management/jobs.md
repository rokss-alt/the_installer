After that, we can use the `jobs` command to list all background processes. Backgrounded processes do not require user interaction, and we can use the same shell session without waiting until the process finishes first. Once the scan or process finishes its work, we will get notified by the terminal that the process is finished.

Service and Process Management

```shell-session
rokss@htb[/htb]$ jobs

[1]+  Running                 ping -c 10 www.hackthebox.eu &
```



If we want to get the background process into the foreground and interact with it again, we can use the `fg <ID>` command.

Service and Process Management

```shell-session
rokss@htb[/htb]$ fg 1
ping -c 10 www.hackthebox.eu

--- www.hackthebox.eu ping statistics ---
10 packets transmitted, 0 received, 100% packet loss, time 9206ms
```



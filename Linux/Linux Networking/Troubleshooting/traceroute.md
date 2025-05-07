Another tool is the `traceroute`, which traces the route packets take to reach a remote host. It sends packets with increasing Time-to-Live (TTL) values to a remote host and displays the IP addresses of the devices that the packets pass through. For example, to trace the route to the Google DNS server, we would enter the following command:

#### Traceroute


```shell-session
rokss@htb[/htb]$ traceroute www.inlanefreight.com

traceroute to www.inlanefreight.com (134.209.24.248), 30 hops max, 60 byte packets
 1  * * *
 2  10.80.71.5 (10.80.71.5)  2.716 ms  2.700 ms  2.730 ms
 3  * * *
 4  10.80.68.175 (10.80.68.175)  7.147 ms  7.132 ms 10.80.68.161 (10.80.68.161)  7.393 ms
```



The `traceroute` command shows the path that packets take to reach a destination—in this case, Google’s DNS server or a website like `www.inlanefreight.com` with the IP `134.209.24.248`. Each line in the output tells you how the data travels across the network.

When setting up a connection, you need to provide the `destination host` (like `134.209.24.248`) and sometimes a limit for how many stops (`hops`) the data can make—usually up to `30`. This helps make sure the packets travel efficiently.

- The second line of the output shows the `first hop`, which is the local network’s gateway at `10.80.71.5`. The next three numbers (e.g., `2.716 ms`) show how long each of the three packets took to reach that device.
    
- The third line shows a hop where no device responded—it just shows three asterisks (`* * *`). This could mean the device is blocking traffic or not working.
    
- In the fourth line, the `third hop` shows two devices with IPs `10.80.68.175` and `10.80.68.161`. Again, you see the time it took for each packet to reach the first one (like `7.147 ms`).
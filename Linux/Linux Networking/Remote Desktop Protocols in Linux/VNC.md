Virtual Network Computing (VNC) is a remote desktop sharing system based on the RFB protocol. It lets users control another computer from a distance by showing its desktop over the network. The remote system can be used just like sitting in front of it. VNC is one of the most common ways to access Linux desktops remotely with a graphical interface.

VNC is generally secure—it uses encryption to protect data while it travels over the network, and it also requires users to authenticate before accessing the system. It's often used by administrators to manage computers that aren’t physically nearby. This includes tasks like server maintenance, running programs on another computer, or offering remote access to workstations. It can also be used for screen sharing so that multiple people can collaborate or solve a problem together.

There are two types of VNC server setups:

1. **Standard VNC servers** share the actual screen of the host machine. Because the keyboard and mouse still work locally, it's good to coordinate with whoever is on the other side.
    
2. **Virtual session servers** let users log into their own sessions, like how terminal servers work, providing independent desktop environments for each user.
    

VNC software—both servers and viewers—is available for all major operating systems, which makes it a popular tool for IT tasks. Similar tools like TeamViewer or [[RDP]] are used for the same purpose.

VNC servers typically listen on TCP port 5900 for the first display (`:0`). Additional displays use ports 5901, 5902, and so on, depending on the display number.

There are many VNC tools available, such as:

- TigerVNC
    
- TightVNC
    
- RealVNC
    
- UltraVNC
    

UltraVNC and RealVNC are especially popular because they support encryption and offer stronger security.

In our example, we're setting up a TigerVNC server. To do this properly, we’ll also install the XFCE4 desktop manager, since using GNOME with VNC often causes issues. After installing the required packages, we’ll set a password for the VNC connection to secure access.
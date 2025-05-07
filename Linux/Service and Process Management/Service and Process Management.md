Services, also known as [[daemons]], are fundamental components of a Linux system that run silently in the background "without direct user interaction".


Service types:

#### System Services

These are internal services required during system startup. They perform essential hardware-related tasks and initialize system components necessary for the operating system to function properly. These are like the engine and transmission systems. They start when you turn the ignition key and are essential for the car to run. Without them, the car wouldn't move.

#### User-Installed Services

These services are added by users and typically include server applications and other background processes that provide specific features or capabilities. These types of services are like the car's air conditioning or GPS navigation system. While not critical for the car to operate, they enhance functionality and provide additional features based on the driver's preferences.


In general, there are just a few goals that we have when we deal with a service or a process:

1. Start/Restart a service/process
2. Stop a service/process
3. See what is/was happening with a service/process
4. Enable/Disable a service/process on boot
5. Find a service/process
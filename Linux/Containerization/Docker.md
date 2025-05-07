`Docker` is a free tool that helps package and run apps in self-contained units called `containers`. It uses a layered file system and keeps resources separate, making it flexible and easy to move apps between systems. Docker also comes with tools to build, launch, and manage containers, which makes the whole process simpler.

Think of a Docker container like a sealed lunchbox. You can use what’s inside (run the app), and when you close it (stop the container), it resets. If you want a different lunchbox (a new container with changes), you write a new recipe (`Dockerfile`). And if you're running lots of lunchboxes at once (like in production), you’d use a system like `Kubernetes` or `Docker Compose` to keep everything organized.



#### Docker Management

When managing Docker containers, Docker provides a comprehensive suite of tools that enable us to easily create, deploy, and manage containers. With these powerful tools, we can list, start and stop containers and effectively manage them, ensuring seamless execution of applications. Some of the most commonly used Docker management commands are:

|**Command**|**Description**|
|---|---|
|`docker ps`|List all running containers|
|`docker stop`|Stop a running container.|
|`docker start`|Start a stopped container.|
|`docker restart`|Restart a running container.|
|`docker rm`|Remove a container.|
|`docker rmi`|Remove a Docker image.|
|`docker logs`|View the logs of a container.|
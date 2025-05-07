Another vital component of network configuration is network access control (`NAC`). As penetration testers, we need to be well-versed in how NAC can enhance network security and the various technologies available. Key NAC models include:

| **Type**                             | **Description**                                                                                                           |
| ------------------------------------ | ------------------------------------------------------------------------------------------------------------------------- |
| Discretionary Access Control (`DAC`) | This model allows the owner of the resource to set permissions for who can access it.                                     |
| Mandatory Access Control (`MAC`)     | Permissions are enforced by the operating system, not the owner of the resource, making it more secure but less flexible. |
| Role-Based Access Control (`RBAC`)   | Permissions are assigned based on roles within an organization, making it easier to manage user privileges.               |

---

Setting up Linux network devices for `NAC` (Network Access Control) means applying security tools and rules. This includes using `SELinux` or `AppArmor` to protect applications, and `TCP wrappers` to control which IP addresses can access certain services. More details will come in later sections.
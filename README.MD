The EC2 instances are in an autoscaling group, and behind a load balancer.

The load balancer is on a public subnet i.e, it can be accessed by anyone.

The instances and db are on a private subnets with firewall rules dictated by security groups.

I organice the Web-Tier architecture in three modules:
    Networking - holds all networking-related infrastructure, the VPC, subnets, and security groups
    Database - The SQL database infrastructure
    Autoscaling - Load balancer, EC2 autoscaling group, and launch template resources.

The namespace variable is a project identifier.

![image](https://user-images.githubusercontent.com/19356065/205511343-d130f261-419e-46da-b280-5f5526d085f1.png)


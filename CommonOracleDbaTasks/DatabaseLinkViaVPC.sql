Adjusting Database Links for Use with DB Instances in a VPC
To use Oracle database links with Amazon RDS DB instances inside the same VPC or peered VPCs, 
the two DB instances should have a valid route between them. 
Verify the valid route between the DB instances by using your VPC routing tables and network access control list (ACL).

The security group of each DB instance must allow ingress to and egress from the other DB instance. 
The inbound and outbound rules can refer to security groups from the same VPC or a peered VPC. 
For more information, see Updating Your Security Groups to Reference Peered VPC Security Groups.

If you have configured a custom DNS server using the DHCP Option Sets in your VPC, 
your custom DNS server must be able to resolve the name of the database link target. For more information, 
see Setting Up a Custom DNS Server.

For more information about using database links with Oracle Data Pump, see Importing Using Oracle Data Pump.
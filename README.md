## About
This is a **CloudFormation** script for build the following **AWS** infrastructure

![infrastructure diagram](myinfra.png?raw=true ("Infrastructure Diagram"))

## Running

###### *It`s important to remember that you need to be logged in on AWS CLI to run the following commands*

```sh
  # Clone repository
  $ git clone https://github.com/alexandrebrunodias/cloudformation-practice
  # Go into script`s directory
  $ cd cloudformation-practice
  # Create the network structure
  $ sh cf.sh network
  # Create the security groups, loadbalancers and ec2 instances
  $ sh cf.sh servers
```
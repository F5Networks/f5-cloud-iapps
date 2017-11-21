## Introduction
This iApp is designed to provide service discovery within cloud environments.  
Additional instructions can be found within the iApp itself.

**NOTE**: This iApp is only intended to be installed from our cloud templates found
in [f5-aws-cloud-form](https://github.com/F5Networks/f5-aws-cloudformation),
[f5-azure-arm-templates](https://github.com/F5Networks/f5-azure-arm-templates),
etc. These templates ensure that the correct dependencies are installed and
configured.

### Unsupported usage
It is possible to install this iApp manually (outside of a deployment made from
    one of our cloud templates). This is not supported and not recommended.

If you wish to proceed:
1. Download the iApp
1. Import the iApp to BIG-IP
1. On the first run of the iApp, it will install missing dependencies. However,
if dependencies are found but out of date, they will not be updated. If you run
into unexpected errors, examine the dependencies listed in the iApp and make
sure you have at least the versions listed installed on the BIG-IP.

**NOTE**: For AWS, this iApp relies on an IAM role for authentication. The IAM role
must be applied to the instance of the BIG-IP running the iApp. The IAM role
must have at least read permissions for:
+ ec2:describeInstances
+ ec2:describeNetworkInterfaces


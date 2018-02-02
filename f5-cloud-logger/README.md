[![Slack Status](https://f5cloudsolutions.herokuapp.com/badge.svg)](https://f5cloudsolutions.herokuapp.com)
[![Issues](https://img.shields.io/github/issues/f5networks/f5-cloud-iapps.svg)](https://github.com/f5networks/f5-cloud-iapps/issues)

## Introduction
This iApp is designed to provide logging into specific cloud analytics solutions (Azure OMS, AWS S3, AWS Cloudwatch etc.).  Additional instructions and supported logging destinations can be found within the iApp.

## Help
While this template has been created by F5 Networks, it currently is an **experimental** solution and therefore has not completed full testing and is subject to change.  F5 Networks does not offer technical support for solutions that have been deemed **experimental**.

We encourage you to use our [Slack channel](https://f5cloudsolutions.herokuapp.com) for discussion and assistance on cloud related solutions.

## Example Azure OMS (Log Analytics) Queries
The following are example queries to get started with interpreting the data now available within Azure. Note: "F5CustomLog" is the default log type, if something different was inputted in the iApp please adjust the below examples appropriately and append with "_CL".
1. Navigate to the Log Analytics solution within OMS where logging is being sent
2. Select *Log Search* to start looking at the available data
3. Start using and analyzing the data any way needed

Display all logs
```
F5CustomLog_CL
```

Display all ASM logs (including DOS logs)
```
F5CustomLog_CL | where logSource_s=="ASM" or device_product_s == "ASM"
```

Display a count of ASM log events sorted by Client IP
```
F5CustomLog_CL | where logSource_s=="ASM" | summarize count() by ip_client_s
```

Display a count of ASM log events sorted by Attack Type
```
F5CustomLog_CL | where logSource_s=="ASM" | summarize count() by attack_type_s
```
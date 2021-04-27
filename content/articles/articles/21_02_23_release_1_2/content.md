+++
fragment = "content"
title = "Realtime OPC UA PubSub Publisher released"
weight = 100
display_date = true
date = "2021-02-23"
+++

**Release notes:**

This is the second maintenance release for the 1.1 release family. It contains only bugfixes compared to the v1.1 release. Newly included bugfixes are for:

* Export UA_Server_getStatistics
* Correctly handle RenewSecureChannel if there was no communication between renews
* Allow anonymous SecurityPolicies with an SecurityPolicyUri (for compatibility with existing SDK)

Major new feature introduced in the v1.1 release family are

* Support for DataTypes with Optional Fields and Unions
* Encrypted SecureChannel via the OpenSSL library (in addition to support via mbed TLS)
* Track the client state for SecureChannel and Session independently
* Comprehensive server statistics
* First support for RT-Linux ETL and XDP (Express Data Path) for realtime PubSub
* First support for Alarms and Conditions
* Note that the v1.1 release family contains new features compared to v1.0. These have not been part of the certification that was achieved for the example server based on * the v1.0 release.

The new Release can be directly downloaded here:

[Github open62541 1.2](https://github.com/open62541/open62541/tree/1.2)



+++
fragment = "item"
#disabled = false
date = "2017-07-22"
weight = 150
#background = "primary"
align = "left"

title = "Download"
#subtitle= "Easily right align the item fragment even with some buttons"

# Subtitle pre and post item
pre = "Latest stable Release 1.2"
#post = "With a simple subtitle"

[[buttons]]
  text = "Windows 32 bit"
  url = "#"
  color = "primary btn-block"
  #color = "primary"

[[buttons]]
  text = "Windows 64 bit"
  url = "#"
  color = "primary btn-block"
  #color = "secondary"

[[buttons]]
  text = "Linux 32 bit"
  url = "#"
  color = "primary btn-block"
  #color = "secondary"

[[buttons]]
  text = "Linux 64 bit"
  url = "#"
  color = "primary btn-block"
  #color = "secondary"

[[buttons]]
  text = "Raspberry Pi (Raspbian OS)"
  url = "#"
  color = "primary btn-block"
  #color = "secondary"

[[buttons]]
  text = "Ubuntu/Debian Lib (amd64.deb)"
  url = "#"
  color = "primary btn-block"
  #color = "secondary"

[[buttons]]
  text = "Ubuntu/Debian Dev (amd64.deb)"
  url = "#"
  color = "primary btn-block"
  #color = "secondary"

+++

Release notes:

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

open62541 (http://open62541.org) is an open source and free implementation of OPC UA (OPC Unified Architecture) written in the common subset of the C99 and C++98 languages. The library is usable with all major compilers and provides the necessary tools to implement dedicated OPC UA clients and servers, or to integrate OPC UA-based communication into existing applications. open62541 library is platform independent. All platform-specific functionality is implemented via exchangeable plugins. Plugin implementations are provided for the major operating systems.

open62541 is licensed under the Mozilla Public License v2.0 (MPLv2). This allows the open62541 library to be combined and distributed with any proprietary software. Only changes to the open62541 library itself need to be licensed under the MPLv2 when copied and distributed. The plugins, as well as the server and client examples are in the public domain (CC0 license). They can be reused under any license and changes do not have to be published.
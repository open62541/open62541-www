+++
fragment = "content"
title = "Release: open62541 Version 1.2.3"
weight = 100
display_date = true
date = "2022-05-12"
image = "releasenote.png"

summary = """
First release of the 1.3 release series of open62541 now available.
"""


#[asset]
#  image = "releasenote.png"
+++


**Release notes:**

Release notes Version 1.3:

This is the first release of the 1.3 release series of open62541.
Going forward, only fixes and non-breaking changes will be integrated in the 1.3 release family.

New features compared to the previous release series 1.2 include:

* Support for OPC UA PubSub encryption (also TPM-based key handling)
* Session authentication with x509 certificates (server-side)
* Support for Event Filters
* Support for Server Diagnostics
* Binary/JSON encoding as a stable public API
* Handling of Subscriptions with different priority
* Greatly improved Nodeset Compiler, including support for structure values
* Added UA_order function for all data types (equality test / absolute ordering for binary search trees, etc.)
* Support for TLS-encrypted MQTT-based PubSub
* Internally generate temporary self-signed certificates

Besides the major functional additions, many small features, fixes and general improvements went into this release. Particularly, the memory consumption of the information model was reduced by about 1/3 compared to the 1.2 release series.

Note that the v1.3 release family contains new features compared to v1.0. These have not been part of the certification that was achieved for the example server based on the v1.0 release.

open62541 (http://open62541.org) is an open source and free implementation of OPC UA (OPC Unified Architecture) written in the common subset of the C99 and C++98 languages. The library is usable with all major compilers and provides the necessary tools to implement dedicated OPC UA clients and servers, or to integrate OPC UA-based communication into existing applications. open62541 library is platform independent. All platform-specific functionality is implemented via exchangeable plugins. Plugin implementations are provided for the major operating systems.

open62541 is licensed under the Mozilla Public License v2.0 (MPLv2). This allows the open62541 library to be combined and distributed with any proprietary software. Only changes to the open62541 library itself need to be licensed under the MPLv2 when copied and distributed. The plugins, as well as the server and client examples are in the public domain (CC0 license). They can be reused under any license and changes do not have to be published.

Older releases and release notes can be found there: https://github.com/open62541/open62541/releases

The new release can be directly downloaded here:

[Github open62541 1.3](https://github.com/open62541/open62541/releases/tag/v1.3)

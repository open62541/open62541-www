+++
fragment = "content"
title = "Release: open62541 Version 1.2.3"
weight = 100
display_date = true
date = "2021-12-01"
image = "releasenote.png"

summary = """
Third patch release for the 1.2 release family of open62541 is now available.
"""


#[asset]
#  image = "releasenote.png"
+++


**Release notes:**

This is the third patch release for the 1.2 release family of open62541.
There were only bugfixes and no API-breaking changes applied for the patch release.
Important changes compared to the previous release include:

* fix(plugin): Remove assert about the key length in ua_openssl_basic256sha256.c
* fix(arch): Use AF_INET in the socket hints if IPV6 is disabled
* fix(arch) : ServerNetworkLayerTCP_start continues if one network interface fails to bind
* fix(pubsub): Allow multiple readers on the same NetworkMessage

open62541 (http://open62541.org) is an open source and free implementation of OPC UA (OPC Unified Architecture) written in the common subset of the C99 and C++98 languages. The library is usable with all major compilers and provides the necessary tools to implement dedicated OPC UA clients and servers, or to integrate OPC UA-based communication into existing applications. The open62541 library is platform independent. All platform-specific functionality is implemented via exchangeable plugins. Plugin implementations are provided for the major operating systems.

open62541 is licensed under the Mozilla Public License v2.0 (MPLv2). This allows the open62541 library to be combined and distributed as part of proprietary software. Only changes to the files of the open62541 library itself need to be licensed under the MPLv2 when copied and distributed. The plugins, as well as the server and client examples are in the public domain (CC0 license). They can be reused under any license and changes do not have to be published.

New features compared to the previous release series 1.1 are:

* Support for additional OPC UA Services (SetTriggering, TransferSubscription)
* Support for more data-types: structures with optional fields and for unions
* Support for pretty-printing of OPC UA data-types
* Support for parsing of standard-defined human-readable NodeIds, BrowsePaths, etc.
* Support for OpenSSL-based encryption and certificate validation
* Support for WebSocket Secure (wss)
* Improved support for Events and Alarms&Conditions
* Improved support for PubSub subscribers
* Improved support for realtime PubSub by integration with external interrupt handling and a configurable realtime "fast path"
* Update to the v1.04 nodeset definitions from the OPC Foundation

Besides the major functional additions, many small features, fixes and general improvements went into this release.

With the release of the release candidate, the API for the 1.2 release series is frozen. Only fixes and non-breaking changes will be integrated going forward. Note that the v1.2 release family contains new features compared to v1.0. These have not been part of the certification that was achieved for the example server based on the v1.0 release.

The new release can be directly downloaded here:

[Github open62541 1.2.3](https://github.com/open62541/open62541/releases/tag/v1.2.3)

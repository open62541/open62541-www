+++
fragment = "item"
#disabled = false
date = "2022-05-11"
weight = 150
#background = "primary"
align = "left"

title = "Download"
#subtitle= "Easily right align the item fragment even with some buttons"

# Subtitle pre and post item
pre = "Latest stable Release 1.3"
#post = "With a simple subtitle"

[[buttons]]
text = "Source Code (zip)"
url = "https://github.com/open62541/open62541/archive/refs/tags/v1.3.zip"
color = "primary btn-block"
#color = "primary"

[[buttons]]
text = "Source Code (tar.gz)"
url = "https://github.com/open62541/open62541/archive/refs/tags/v1.3.tar.gz"
color = "primary btn-block"
#color = "secondary"

[[buttons]]
text = "Single-File Release open62541.h/open62541.c"
url = "https://github.com/open62541/open62541/releases/tag/v1.3.6"
color = "primary btn-block"

#[[buttons]]
#  text = "Single File Release"
#  url = "#"
#  color = "primary btn-block"
#  #color = "secondary"

[[buttons]]
text = "Ubuntu PPA"
url = "https://launchpad.net/~open62541-team/+archive/ubuntu/ppa"
color = "primary btn-block"
#color = "secondary"

+++

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
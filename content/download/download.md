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
pre = "Latest stable Release 1.2.3"
#post = "With a simple subtitle"

[[buttons]]
text = "Source Code (zip)"
url = "https://github.com/open62541/open62541/archive/refs/tags/v1.2.3.zip"
color = "primary btn-block"
#color = "primary"

[[buttons]]
text = "Source Code (tar.gz)"
url = "https://github.com/open62541/open62541/archive/refs/tags/v1.2.3.tar.gz"
color = "primary btn-block"
#color = "secondary"

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

Release notes Version 1.2.3:

This is the third patch release for the 1.2 release family of open62541.
There were only bugfixes and no API-breaking changes applied for the patch release.
Important changes compared to the previous release include:

* fix(plugin): Remove assert about the key length in ua_openssl_basic256sha256.c
* fix(arch): Use AF_INET in the socket hints if IPV6 is disabled
* fix(arch) : ServerNetworkLayerTCP_start continues if one network interface fails to bind
* fix(pubsub): Allow multiple readers on the same NetworkMessage


open62541 (http://open62541.org) is an open source and free implementation of OPC UA (OPC Unified Architecture) written in the common subset of the C99 and C++98 languages. The library is usable with all major compilers and provides the necessary tools to implement dedicated OPC UA clients and servers, or to integrate OPC UA-based communication into existing applications. open62541 library is platform independent. All platform-specific functionality is implemented via exchangeable plugins. Plugin implementations are provided for the major operating systems.

open62541 is licensed under the Mozilla Public License v2.0 (MPLv2). This allows the open62541 library to be combined and distributed with any proprietary software. Only changes to the open62541 library itself need to be licensed under the MPLv2 when copied and distributed. The plugins, as well as the server and client examples are in the public domain (CC0 license). They can be reused under any license and changes do not have to be published.

Older releases and release notes can be found there: https://github.com/open62541/open62541/releases
+++
fragment = "item"
#disabled = false
date = "2024-02-03"
title = "Download"
weight = 150
#background = "primary"
align = "left"

#subtitle= "Easily right align the item fragment even with some buttons"

# Subtitle pre and post item
pre = """<b style="	width: 100%;display: block;text-align: center;">Latest stable Release 1.4.10</b><br>"""
#post = "With a simple subtitle"

[[buttons]]
text = "Source Code (zip)"
url = "https://github.com/open62541/open62541/archive/refs/tags/v1.4.10.zip"
color = "primary btn-block"
#color = "primary"

[[buttons]]
text = "Source Code (tar.gz)"
url = "https://github.com/open62541/open62541/archive/refs/tags/v1.4.10.tar.gz"
color = "primary btn-block"
#color = "secondary"

[[buttons]]
text = "Single-File Release open62541.h/open62541.c"
url = "https://github.com/open62541/open62541/releases/tag/v1.4.10"
color = "primary btn-block"
+++

open62541 (http://open62541.org) is an open source implementation of OPC UA (OPC Unified Architecture / IEC 62541) written in the C language. The library is usable with all major compilers and provides the necessary tools to implement dedicated OPC UA clients and servers, or to integrate OPC UA-based communication into existing applications. The open62541 library is platform independent: All platform-specific functionality is implemented via exchangeable plugins for easy porting to different (embedded) targets.

open62541 is licensed under the Mozilla Public License v2.0 (MPLv2). This allows the open62541 library to be combined and distributed with any proprietary software. Only changes to the open62541 library itself need to be licensed under the MPLv2 when copied and distributed. The plugins, as well as the server and client examples are in the public domain (CC0 license). They can be reused under any license and changes do not have to be published.

Older releases and release notes can be found there: https://github.com/open62541/open62541/releases

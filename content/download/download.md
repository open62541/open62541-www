+++
fragment = "item"
#disabled = false
date = "2024-02-03"
weight = 150
#background = "primary"
align = "left"

title = "Download"
#subtitle= "Easily right align the item fragment even with some buttons"

# Subtitle pre and post item
pre = "Latest stable Release 1.4.10"
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

Release notes Version 1.4.10:

This is the tenth patch release v1.4.10 of the 1.4 release series of open62541.

The important changes compared to the previous release v1.4.9 are:
- core: Fix an inter overrun in the JSON decoding (not a security concern)
- core: Remove UA_LOCK_STATIC_INIT and its only user -- not available on all platforms
- core: Recursive locking strategy
- core: JSON-encode Variant ArrayDimensions needs to be UInt32 (unsigned)
- el: Expose the EventLoop mutex in the API

New features and major changes compared to the previous release series 1.3 include:
- core: Switch to an EventLoop model for the control flow
- core: Support for OpenSSL 3.0
- core: Add the Aes256-Sha256-RsaPss security policy
- core: Automatically unwrap ExtensionObject arrays inside UA_Variant
- core: txtime feature for time-based sending of Ethernet packets (Linux only)
- client/server/pubsub: Server, Client and PubSub API are thread-safe with internal locks
- client/server: Private key password protection with a userland callback (client and server)
- client/server: Authentication with x509 certificates (client and server)
- client/server: Support for session-specific server locales (nodes can have localized Description and DisplayName)
- client: Make connection properties in the client accessible via the API
- client: Allow setting a custom SessionName in the client config
- client: Consider the request timeoutHint in synchronous service calls of the client
- server: Implementation of the TransferSubscription and Cancel Service
- server: File-based server configuration using a JSON5 configuration file
- server: Make Session properties in the server accessible via the API
- server: Use an encrypted SecureChannel for registering at a Discovery Server
- server: MonitoredItems with negative sampling interval (linked to the publish interval of the Subscription)
- server: Integration with the NodesetLoader project for runtime parsing and integration of Nodeset XML files
- server: Session and Subscription Diagnostics as part of the server object
- server: Support for the AccessLevelEx attribute
- server: Support for EventFilters
- server: ReverseConnect for the Server
- server: Use config->shutdownDelay delay for the server shutdown
- server: Use dedicate PKI for SecureChannel and Session certificates
- pubsub: Support for the PubSub SKS (Security Key Service)
- pubsub: Support for PubSub UDP Unicast
- pubsub: PubSub StandaloneSubscribedDataSets information model representation

open62541 (http://open62541.org) is an open source implementation of OPC UA (OPC Unified Architecture / IEC 62541) written in the C language. The library is usable with all major compilers and provides the necessary tools to implement dedicated OPC UA clients and servers, or to integrate OPC UA-based communication into existing applications. The open62541 library is platform independent: All platform-specific functionality is implemented via exchangeable plugins for easy porting to different (embedded) targets.

open62541 is licensed under the Mozilla Public License v2.0 (MPLv2). This allows the open62541 library to be combined and distributed with any proprietary software. Only changes to the open62541 library itself need to be licensed under the MPLv2 when copied and distributed. The plugins, as well as the server and client examples are in the public domain (CC0 license). They can be reused under any license and changes do not have to be published.

Older releases and release notes can be found there: https://github.com/open62541/open62541/releases
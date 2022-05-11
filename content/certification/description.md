+++
fragment = "content"
#disabled = true
date = "2017-10-05"
weight = 200
#background = "secondary"

title = "Certification Details"
subtitle = " "
#title_align = "left" # Default is center, can be left, right or center
+++

OPC Foundation Certified for Compliance logo is a trademark of the OPC Foundation and may be used only by written permission of the OPC Foundation. Any unauthorized use of the Certified for Compliance logo is prohibited. OPC Foundation Certified for Compliance logo indicates that this product has been tested by an independent certification lab and certified to be compliant with the following OPC UA Profiles which are part of the OPC UA Specifications:

**Profile:**<br>
Micro Embedded Device Server<br>
**Security Policies:**<br>
Basic128Rsa15<br>
Basic256<br>
Basic256Sha256<br>
**User Tokens:**<br>
Anonymous Facet<br>
User Name Password Server Facet<br>
Method Server Facet<br>
Node Management Facet<br>

Additional information about compliance testing, logo program and a summary of test results can be found at www.opcfoundation.org for: Open62541 OPC UA Server (server_ctt) 1.0.0-rc5.

The precise version used for the certification has the commit hash 1135945fe8eb8e4e9df7694e5d564443a6d4df80 . Later releases in the 1.0 release family contain only bugfixes in comparison to the certified version.

**Certification Limitations & Common Misconceptions:**<br>

Certification was done for a reference server ("CTT server") based on the open62541 SDK and not for the SDK itself. The server implementation used for the certification can be found at https://github.com/open62541/open62541/blob/1.0/examples/server_ctt.c.
No Certification Grandfathering: There is no grandfathering of certification, users who want their application based on open62541 to be certified need to undergo separate testing at the OPC Foundation Test Lab
Certification is attempted for selected feature-sets (facets). Some features are implemented but not under test at this time. These features are disabled by default in the SDK:<br>
Features submitted for testing are based on granularity of "facets" (Micro Embedded Device Server, Method Facet, Node Management Facet and the SecurityPolicies).
Some additional conformance units (e.g. for events) are already implemented. But the corresponding "facet" is not yet complete
JSON encoding is implemented in open62541. But the feature cannot be certified due to the lack of official test cases and tools
Historical data access is implemented in open62541. But the feature is not testable with the current CTT. We did however implement the standard test cases for historical data (that are part of the spec) in our unit tests
At the time of writing this section (Sep 2019), PubSub (UADP) is implemented in open62541. But the feature cannot be certified due to the lack of official test cases and testing tools. We did however implement the standard cases used for the PubSub interoperability workshop, where we participated earlier this year. It should be noted that Kalycito is member of IIC TSN Testbed and OPC Foundation and Fraunhofer IOSB is a member of OPC Foundation. This enables us to closely follow the technology evolution path and be an early adopter.
Interested in our work? Next steps to take
OSADL continues to actively support the project and fosters addition of new features and functions. To do so it welcomes new participants who may select from various contribution levels as outlined at https://www.osadl.org/LoI2
As this is a rapidly evolving technology space, the official standards and compliance tools are evolving fast and the open source code is evolving fast as well. You might want to get external support to get your products certified and also integrate the latest feature additions to open source into your products as soon as possible. Kalycito provides such support for integration and certification and you can find more details abut their services at https://www.kalycito.com/opc-ua-sdk/.
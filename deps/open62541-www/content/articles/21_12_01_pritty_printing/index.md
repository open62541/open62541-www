+++
fragment = "content"
title = "Feature Spotlight: Pretty-printing in the gdb Debugger"
weight = 100
display_date = true
date = "2022-05-01"

summary = """
Introduction of a little nice feature that adds a lot of convenience for developers on Linux. It's the **pretty-printing** of OPC UA data types. It reduces visual noise and makes the introspection of local variables much more convenient. 
"""

#[asset]
#  image = "spotlight.png"
+++


A little known feature that adds a lot of convenience for developers on Linux is the pretty-printing of OPC UA data types. It reduces visual noise and makes the introspection of local variables much more convenient.

Pretty-printing can be activated by loading the definitions as ``source <open62541>/tools/gdb-pretty-print.py``.
Below are some before/after examples to showcase the effect.

NodeIds have four different representations (numeric, string, guid, bytestring).
This leads to a very cluttered gdb output due to the C-union where a numeric id is also interpreted as a (string) pointer.

![image](gdb_pretty_nodeid1.png)

With pretty-printing enabled, the NodeId is converted as a human-readable string.
This is the standard-defined format that can also be parsed via UA_NodeId_parse.

![image](gdb_pretty_nodeid2.png)


Another complicated datatype is UA_Variant. A variant is a container that can wrap any other OPC UA data type, also as a (multi-dimensional) array. Printing a variant in GDB leads to a messy output. Particularly the data type information is not automatically resolved. Furthermore, the value is hidden behind an opaque void-pointer.

![image](gdb_pretty1.png)


 The variant is immediately understandable with pretty-printing enabled. In this example, the variant contains a scalar timestamp value.

![image](gdb_pretty2.png)


@Author Dr. -Ing. Julius Pfrommer, 2021


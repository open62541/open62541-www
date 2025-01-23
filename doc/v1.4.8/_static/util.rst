Range Definition
----------------

.. code-block:: c

   
   typedef struct {
       UA_UInt32 min;
       UA_UInt32 max;
   } UA_UInt32Range;
   
   typedef struct {
       UA_Duration min;
       UA_Duration max;
   } UA_DurationRange;
   
Random Number Generator
-----------------------
If UA_MULTITHREADING is defined, then the seed is stored in thread
local storage. The seed is initialized for every thread in the
server/client.

.. code-block:: c

   
   void
   UA_random_seed(UA_UInt64 seed);
   
   UA_UInt32
   UA_UInt32_random(void); /* no cryptographic entropy */
   
   UA_Guid
   UA_Guid_random(void);   /* no cryptographic entropy */
   
Key Value Map
-------------
Helper functions to work with configuration parameters in an array of
UA_KeyValuePair. Lookup is linear. So this is for small numbers of keys. The
methods below that accept a `const UA_KeyValueMap` as an argument also accept
NULL for that argument and treat it as an empty map.

.. code-block:: c

   
   typedef struct {
       size_t mapSize;
       UA_KeyValuePair *map;
   } UA_KeyValueMap;
   
   extern const UA_KeyValueMap UA_KEYVALUEMAP_NULL;
   
   UA_KeyValueMap *
   UA_KeyValueMap_new(void);
   
   void
   UA_KeyValueMap_clear(UA_KeyValueMap *map);
   
   void
   UA_KeyValueMap_delete(UA_KeyValueMap *map);
   
   /* Is the map empty (or NULL)? */
   UA_Boolean
   UA_KeyValueMap_isEmpty(const UA_KeyValueMap *map);
   
   /* Does the map contain an entry for the key? */
   UA_Boolean
   UA_KeyValueMap_contains(const UA_KeyValueMap *map, const UA_QualifiedName key);
   
   /* Insert a copy of the value. Can reallocate the underlying array. This
    * invalidates pointers into the previous array. If the key exists already, the
    * value is overwritten (upsert semantics). */
   UA_StatusCode
   UA_KeyValueMap_set(UA_KeyValueMap *map,
                      const UA_QualifiedName key,
                      const UA_Variant *value);
   
   /* Helper function for scalar insertion that internally calls
    * `UA_KeyValueMap_set` */
   UA_StatusCode
   UA_KeyValueMap_setScalar(UA_KeyValueMap *map,
                            const UA_QualifiedName key,
                            void *p,
                            const UA_DataType *type);
   
   /* Returns a pointer to the value or NULL if the key is not found */
   const UA_Variant *
   UA_KeyValueMap_get(const UA_KeyValueMap *map,
                      const UA_QualifiedName key);
   
   /* Returns NULL if the value for the key is not defined, not of the right
    * datatype or not a scalar */
   const void *
   UA_KeyValueMap_getScalar(const UA_KeyValueMap *map,
                            const UA_QualifiedName key,
                            const UA_DataType *type);
   
   /* Remove a single entry. To delete the entire map, use `UA_KeyValueMap_clear`. */
   UA_StatusCode
   UA_KeyValueMap_remove(UA_KeyValueMap *map,
                         const UA_QualifiedName key);
   
   /* Create a deep copy of the given KeyValueMap */
   UA_StatusCode
   UA_KeyValueMap_copy(const UA_KeyValueMap *src, UA_KeyValueMap *dst);
   
   /* Copy entries from the right-hand-side into the left-hand-size. Reallocates
    * previous memory in the left-hand-side. If the operation fails, both maps are
    * left untouched. */
   UA_StatusCode
   UA_KeyValueMap_merge(UA_KeyValueMap *lhs, const UA_KeyValueMap *rhs);
   
Binary Connection Config Parameters
-----------------------------------

.. code-block:: c

   
   typedef struct {
       UA_UInt32 protocolVersion;
       UA_UInt32 recvBufferSize;
       UA_UInt32 sendBufferSize;
       UA_UInt32 localMaxMessageSize;  /* (0 = unbounded) */
       UA_UInt32 remoteMaxMessageSize; /* (0 = unbounded) */
       UA_UInt32 localMaxChunkCount;   /* (0 = unbounded) */
       UA_UInt32 remoteMaxChunkCount;  /* (0 = unbounded) */
   } UA_ConnectionConfig;
   
.. _default-node-attributes:

Default Node Attributes
-----------------------
Default node attributes to simplify the use of the AddNodes services. For
example, Setting the ValueRank and AccessLevel to zero is often an unintended
setting and leads to errors that are hard to track down.

.. code-block:: c

   
   /* The default for variables is "BaseDataType" for the datatype, -2 for the
    * valuerank and a read-accesslevel. */
   extern const UA_VariableAttributes UA_VariableAttributes_default;
   extern const UA_VariableTypeAttributes UA_VariableTypeAttributes_default;
   
   /* Methods are executable by default */
   extern const UA_MethodAttributes UA_MethodAttributes_default;
   
   /* The remaining attribute definitions are currently all zeroed out */
   extern const UA_ObjectAttributes UA_ObjectAttributes_default;
   extern const UA_ObjectTypeAttributes UA_ObjectTypeAttributes_default;
   extern const UA_ReferenceTypeAttributes UA_ReferenceTypeAttributes_default;
   extern const UA_DataTypeAttributes UA_DataTypeAttributes_default;
   extern const UA_ViewAttributes UA_ViewAttributes_default;
   
Endpoint URL Parser
-------------------
The endpoint URL parser is generally useful for the implementation of network
layer plugins.

.. code-block:: c

   
   /* Split the given endpoint url into hostname, port and path. All arguments must
    * be non-NULL. EndpointUrls have the form "opc.tcp://hostname:port/path", port
    * and path may be omitted (together with the prefix colon and slash).
    *
    * @param endpointUrl The endpoint URL.
    * @param outHostname Set to the parsed hostname. The string points into the
    *        original endpointUrl, so no memory is allocated. If an IPv6 address is
    *        given, hostname contains e.g. '[2001:0db8:85a3::8a2e:0370:7334]'
    * @param outPort Set to the port of the url or left unchanged.
    * @param outPath Set to the path if one is present in the endpointUrl. Can be
    *        NULL. Then not path is returned. Starting or trailing '/' are NOT
    *        included in the path. The string points into the original endpointUrl,
    *        so no memory is allocated.
    * @return Returns UA_STATUSCODE_BADTCPENDPOINTURLINVALID if parsing failed. */
   UA_StatusCode
   UA_parseEndpointUrl(const UA_String *endpointUrl, UA_String *outHostname,
                       UA_UInt16 *outPort, UA_String *outPath);
   
   /* Split the given endpoint url into hostname, vid and pcp. All arguments must
    * be non-NULL. EndpointUrls have the form "opc.eth://<host>[:<VID>[.PCP]]".
    * The host is a MAC address, an IP address or a registered name like a
    * hostname. The format of a MAC address is six groups of hexadecimal digits,
    * separated by hyphens (e.g. 01-23-45-67-89-ab). A system may also accept
    * hostnames and/or IP addresses if it provides means to resolve it to a MAC
    * address (e.g. DNS and Reverse-ARP).
    *
    * Note: currently only parsing MAC address is supported.
    *
    * @param endpointUrl The endpoint URL.
    * @param vid Set to VLAN ID.
    * @param pcp Set to Priority Code Point.
    * @return Returns UA_STATUSCODE_BADINTERNALERROR if parsing failed. */
   UA_StatusCode
   UA_parseEndpointUrlEthernet(const UA_String *endpointUrl, UA_String *target,
                               UA_UInt16 *vid, UA_Byte *pcp);
   
   /* Convert given byte string to a positive number. Returns the number of valid
    * digits. Stops if a non-digit char is found and returns the number of digits
    * up to that point. */
   size_t
   UA_readNumber(const UA_Byte *buf, size_t buflen, UA_UInt32 *number);
   
   /* Same as UA_ReadNumber but with a base parameter */
   size_t
   UA_readNumberWithBase(const UA_Byte *buf, size_t buflen,
                         UA_UInt32 *number, UA_Byte base);
   
   #ifndef UA_MIN
   #define UA_MIN(A, B) ((A) > (B) ? (B) : (A))
   #endif
   
   #ifndef UA_MAX
   #define UA_MAX(A, B) ((A) > (B) ? (A) : (B))
   #endif
   
Parse RelativePath Expressions
------------------------------

Parse a RelativePath according to the format defined in Part 4, A2. This is
used e.g. for the BrowsePath structure. For now, only the standard
ReferenceTypes from Namespace 0 are recognized (see Part 3).

  ``RelativePath := ( ReferenceType [BrowseName]? )*``

The ReferenceTypes have either of the following formats:

- ``/``: *HierarchicalReferences* and subtypes
- ``.``: *Aggregates* ReferenceTypesand subtypes
- ``< [!#]* BrowseName >``: The ReferenceType is indicated by its BrowseName
  (a QualifiedName). Prefixed modifiers can be as follows: ``!`` switches to
  inverse References. ``#`` excludes subtypes of the ReferenceType.

QualifiedNames consist of an optional NamespaceIndex and the nameitself:

  ``QualifiedName := ([0-9]+ ":")? Name``

The QualifiedName representation for RelativePaths uses ``&`` as the escape
character. Occurences of the characters ``/.<>:#!&`` in a QualifiedName have
to be escaped (prefixed with ``&``).

Example RelativePaths
`````````````````````

- ``/2:Block&.Output``
- ``/3:Truck.0:NodeVersion``
- ``<0:HasProperty>1:Boiler/1:HeatSensor``
- ``<0:HasChild>2:Wheel``
- ``<#Aggregates>1:Boiler/``
- ``<!HasChild>Truck``
- ``<HasChild>``

.. code-block:: c

   #ifdef UA_ENABLE_PARSING
   UA_StatusCode
   UA_RelativePath_parse(UA_RelativePath *rp, const UA_String str);
   #endif
   
Convenience macros for complex types
------------------------------------

.. code-block:: c

   #define UA_PRINTF_GUID_FORMAT "%08" PRIx32 "-%04" PRIx16 "-%04" PRIx16 \
       "-%02" PRIx8 "%02" PRIx8 "-%02" PRIx8 "%02" PRIx8 "%02" PRIx8 "%02" PRIx8 "%02" PRIx8 "%02" PRIx8
   #define UA_PRINTF_GUID_DATA(GUID) (GUID).data1, (GUID).data2, (GUID).data3, \
           (GUID).data4[0], (GUID).data4[1], (GUID).data4[2], (GUID).data4[3], \
           (GUID).data4[4], (GUID).data4[5], (GUID).data4[6], (GUID).data4[7]
   
   #define UA_PRINTF_STRING_FORMAT "\"%.*s\""
   #define UA_PRINTF_STRING_DATA(STRING) (int)(STRING).length, (STRING).data
   
Cryptography Helpers
--------------------

.. code-block:: c

   
   /* Compare memory in constant time to mitigate timing attacks.
    * Returns true if ptr1 and ptr2 are equal for length bytes. */
   UA_Boolean
   UA_constantTimeEqual(const void *ptr1, const void *ptr2, size_t length);
   
   /* Zero-out memory in a way that is not removed by compiler-optimizations. Use
    * this to ensure cryptographic secrets don't leave traces after the memory was
    * freed. */
   void
   UA_ByteString_memZero(UA_ByteString *bs);

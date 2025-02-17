.. _types-tutorial:

Working with Data Types
-----------------------

OPC UA defines a type system for values that can be encoded in the protocol
messages. This tutorial shows some examples for available data types and
their use. See the section on :ref:`types` for the full definitions.

Basic Data Handling
^^^^^^^^^^^^^^^^^^^
This section shows the basic interaction patterns for data types. Make
sure to compare with the type definitions in ``types.h``.

.. code-block:: c

   
   #include <open62541/plugin/log_stdout.h>
   #include <open62541/server.h>
   #include <open62541/server_config_default.h>
   
   #include <stdlib.h>
   #include <stdio.h>
   
   static void
   variables_basic(void) {
       /* Int32 */
       UA_Int32 i = 5;
       UA_Int32 j;
       UA_Int32_copy(&i, &j);
   
       UA_Int32 *ip = UA_Int32_new();
       UA_Int32_copy(&i, ip);
       UA_Int32_delete(ip);
   
       /* String */
       UA_String s;
       UA_String_init(&s); /* _init zeroes out the entire memory of the datatype */
       char *test = "test";
       s.length = strlen(test);
       s.data = (UA_Byte*)test;
   
       UA_String s2;
       UA_String_copy(&s, &s2);
       UA_String_clear(&s2); /* Copying heap-allocated the dynamic content */
   
       UA_String s3 = UA_STRING("test2");
       UA_String s4 = UA_STRING_ALLOC("test2"); /* Copies the content to the heap */
       UA_Boolean eq = UA_String_equal(&s3, &s4);
       UA_String_clear(&s4);
       if(!eq)
           return;
   
       /* Structured Type */
       UA_ReadRequest rr;
       UA_init(&rr, &UA_TYPES[UA_TYPES_READREQUEST]); /* Generic method */
       UA_ReadRequest_init(&rr); /* Shorthand for the previous line */
   
       rr.requestHeader.timestamp = UA_DateTime_now(); /* Members of a structure */
   
       rr.nodesToRead = (UA_ReadValueId *)UA_Array_new(5, &UA_TYPES[UA_TYPES_READVALUEID]);
       rr.nodesToReadSize = 5; /* Array size needs to be made known */
   
       UA_ReadRequest *rr2 = UA_ReadRequest_new();
       UA_copy(&rr, rr2, &UA_TYPES[UA_TYPES_READREQUEST]);
       UA_ReadRequest_clear(&rr);
       UA_ReadRequest_delete(rr2);
   }
   
NodeIds
^^^^^^^
An OPC UA information model is made up of nodes and references between nodes.
Every node has a unique :ref:`nodeid`. NodeIds refer to a namespace with an
additional identifier value that can be an integer, a string, a guid or a
bytestring.

.. code-block:: c

   
   static void
   variables_nodeids(void) {
       UA_NodeId id1 = UA_NODEID_NUMERIC(1, 1234);
       id1.namespaceIndex = 3;
   
       UA_NodeId id2 = UA_NODEID_STRING(1, "testid"); /* the string is static */
       UA_Boolean eq = UA_NodeId_equal(&id1, &id2);
       if(eq)
           return;
   
       UA_NodeId id3;
       UA_NodeId_copy(&id2, &id3);
       UA_NodeId_clear(&id3);
   
       UA_NodeId id4 = UA_NODEID_STRING_ALLOC(1, "testid"); /* the string is copied
                                                               to the heap */
       UA_NodeId_clear(&id4);
   }
   
Variants
^^^^^^^^
The datatype :ref:`variant` belongs to the built-in datatypes of OPC UA and
is used as a container type. A variant can hold any other datatype as a
scalar (except variant) or as an array. Array variants can additionally
denote the dimensionality of the data (e.g. a 2x3 matrix) in an additional
integer array.

.. code-block:: c

   
   static void
   variables_variants(void) {
       /* Set a scalar value */
       UA_Variant v;
       UA_Int32 i = 42;
       UA_Variant_setScalar(&v, &i, &UA_TYPES[UA_TYPES_INT32]);
   
       /* Make a copy */
       UA_Variant v2;
       UA_Variant_copy(&v, &v2);
       UA_Variant_clear(&v2);
   
       /* Set an array value */
       UA_Variant v3;
       UA_Double d[9] = {1.0, 2.0, 3.0,
                         4.0, 5.0, 6.0,
                         7.0, 8.0, 9.0};
       UA_Variant_setArrayCopy(&v3, d, 9, &UA_TYPES[UA_TYPES_DOUBLE]);
   
       /* Set array dimensions */
       v3.arrayDimensions = (UA_UInt32 *)UA_Array_new(2, &UA_TYPES[UA_TYPES_UINT32]);
       v3.arrayDimensionsSize = 2;
       v3.arrayDimensions[0] = 3;
       v3.arrayDimensions[1] = 3;
       UA_Variant_clear(&v3);
   }
   
   #ifdef UA_ENABLE_JSON_ENCODING
   static void
   prettyprint(void) {
       UA_ReadRequest rr;
       UA_ReadRequest_init(&rr);
       UA_ReadValueId rvi[2];
       UA_ReadValueId_init(rvi);
       UA_ReadValueId_init(&rvi[1]);
       rr.nodesToRead = rvi;
       rr.nodesToReadSize = 2;
       UA_String out = UA_STRING_NULL;
       UA_print(&rr, &UA_TYPES[UA_TYPES_READREQUEST], &out);
   
       printf("%.*s\n", (int)out.length, out.data);
       UA_String_clear(&out);
   
       UA_ReadResponse resp;
       UA_ReadResponse_init(&resp);
       UA_print(&resp, &UA_TYPES[UA_TYPES_READRESPONSE], &out);
   
       printf("%.*s\n", (int)out.length, out.data);
       UA_String_clear(&out);
   
       UA_ReferenceDescription br;
       UA_ReferenceDescription_init(&br);
       br.nodeClass = (UA_NodeClass)5;
       UA_print(&br, &UA_TYPES[UA_TYPES_REFERENCEDESCRIPTION], &out);
       printf("%.*s\n", (int)out.length, out.data);
       UA_String_clear(&out);
   
       UA_Float matrix[4] = {1.0, 2.0, 3.0, 4.0};
       UA_UInt32 matrix_dims[2] = {2, 2};
       UA_DataValue dv;
       UA_DataValue_init(&dv);
       UA_Variant_setArray(&dv.value, &matrix, 4, &UA_TYPES[UA_TYPES_FLOAT]);
       dv.value.arrayDimensions = matrix_dims;
       dv.value.arrayDimensionsSize = 2;
       dv.hasValue = true;
       dv.hasStatus = true;
       dv.hasServerTimestamp = true;
       dv.hasSourcePicoseconds = true;
       UA_print(&dv, &UA_TYPES[UA_TYPES_DATAVALUE], &out);
       printf("%.*s\n", (int)out.length, out.data);
       UA_String_clear(&out);
   }
   #endif
   
It follows the main function, making use of the above definitions.

.. code-block:: c

   
   int main(void) {
       variables_basic();
       variables_nodeids();
       variables_variants();


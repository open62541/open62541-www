Manipulating node attributes
============================

In our last tutorial, :doc:`tutorial_nodes`, we created some nodes using both the server and the client side API. In this tutorial, we will explore how to manipulate the contents of nodes and create meaningful neamespace contents. This part of the tutorials focuses in particular on node fields (displayname, description,...) and variables.

Getting and setting node attributes
-----------------------------------

Setting or getting attributes in nodes is handled by the following set of functions:

```UA_(Server|Client)_(get|set)Attribute_(attributeName)( ..., (attributeType *) value);```

Some explanation may be in order. OPC UA has different types of nodes that consist of a series of attribute field. All nodes share a common set of attributes, called base attributes. Each node type then has a set of his own type specific attributes. The above function allows the user to read or write those attributes of nodes in a simple fashion, without having to resort to the low-level read and write services. Note that not all attributes may be readable or writable, especially not those that identify a note or its type. Also, since variable specific attributes are contained within the variableNodes UA_Variant field, they may not be set directly, but have to be set along with a valid UA_Variant value;

The next table gives you an overview over the attributes and related nodes. As you can see, the first 7 attributes are shared by all node types.

+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| Attribute ID           | UA_ObjectNode | UA_VariableNode | UA_ObjectTypeNode | UA_VariableTypeNode | UA_DataTypeNode | UA_ReferenceTypeNode | UA_MethodNode | UA_ViewNode |
+========================+===============+=================+===================+=====================+=================+======================+===============+=============+
| nodeId                 |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| nodeClass              |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| browseName             |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| displayName            |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| description            |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| writeMask              |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| userWriteMask          |       X       |        X        |         X         |          X          |        X        |          X           |        X      |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| isAbstract             |               |                 |         X         |          X          |        X        |          X           |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| symmetric              |               |                 |                   |                     |                 |          X           |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| inverseName            |               |                 |                   |                     |                 |          X           |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| containsNoLoops        |               |                 |                   |                     |                 |                      |               |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| eventNotifier          |       X       |                 |                   |                     |                 |                      |               |       X     |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| value                  |               |        X        |                   |          X          |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| dataType               |               |                 |                   |          X          |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| valueRank              |               |        X        |                   |                     |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| arrayDimensions        |               |                 |                   |                     |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| accessLevel            |               |        X        |                   |                     |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| userAccessLevel        |               |        X        |                   |                     |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| minimumSamplingInterval|               |        X        |                   |                     |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| historizing            |               |        X        |                   |                     |                 |                      |               |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| executable             |               |                 |                   |                     |                 |                      |       X       |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+
| userExecutable         |               |                 |                   |                     |                 |                      |       X       |             |
+------------------------+---------------+-----------------+-------------------+---------------------+-----------------+----------------------+---------------+-------------+

The following table shows which datatype is expected for which attribute field and if set or get are supported. This list applies to both the client and the server:

+------------------------+----------------------------------------+-----+-----+-------------------------+
| Attribute ID           | Attribute Number / Alias               | get | set | Expected type for void* |
+------------------------+========================================+=====+=====+=========================+
| nodeId                 | UA_ATTRIBUTEID_NODEID                  |  ✔  |  ✘  | UA_NodeId               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| nodeClass              | UA_ATTRIBUTEID_NODECLASS               |  ✔  |  ✘  | UA_NodeClass | UA_UInt32|
+------------------------+----------------------------------------+-----+-----+-------------------------+
| browseName             | UA_ATTRIBUTEID_BROWSENAME              |  ✔  |  ✔  | UA_QualifiedName        |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| displayName            | UA_ATTRIBUTEID_DISPLAYNAME             |  ✔  |  ✔  | UA_LocalizedText        |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| description            | UA_ATTRIBUTEID_DESCRIPTION             |  ✔  |  ✔  | UA_LocalizedText        |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| writeMask              | UA_ATTRIBUTEID_WRITEMASK               |  ✔  |  ✔  | UA_UInt32               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| userWriteMask          | UA_ATTRIBUTEID_USERWRITEMASK           |  ✔  |  ✔  | UA_UInt32               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| isAbstract             | UA_ATTRIBUTEID_ISABSTRACT              |  ✔  |  ✔  | UA_Boolean              |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| symmetric              | UA_ATTRIBUTEID_SYMMETRIC               |  ✔  |  ✔  | UA_Boolean              |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| inverseName            | UA_ATTRIBUTEID_INVERSENAME             |  ✔  |  ✔  | UA_LocalizedText        |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| containsNoLoops        | UA_ATTRIBUTEID_CONTAINSNOLOOPS         |  ✔  |  ✔  | UA_Boolean              |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| eventNotifier          | UA_ATTRIBUTEID_EVENTNOTIFIER           |  ✔  |  ✔  | UA_Byte                 |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| value                  | UA_ATTRIBUTEID_VALUE                   |  ✔  |  ✔  | UA_Variant              |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| dataType               | UA_ATTRIBUTEID_DATATYPE                |  ✔  |  ✘  | UA_NodeId               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| valueRank              | UA_ATTRIBUTEID_VALUERANK               |  ✔  |  ✘  | UA_Int32                |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| arrayDimensions        | UA_ATTRIBUTEID_ARRAYDIMENSIONS         |  ✔  |  ✘  | UA_UInt32               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| accessLevel            | UA_ATTRIBUTEID_ACCESSLEVEL             |  ✔  |  ✔  | UA_UInt32               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| userAccessLevel        | UA_ATTRIBUTEID_USERACCESSLEVEL         |  ✔  |  ✔  | UA_UInt32               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| minimumSamplingInterval| UA_ATTRIBUTEID_MINIMUMSAMPLINGINTERVAL |  ✔  |  ✔  | UA_Double               |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| historizing            | UA_ATTRIBUTEID_HISTORIZING             |  ✔  |  ✔  | UA_Boolean              |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| executable             | UA_ATTRIBUTEID_EXECUTABLE              |  ✔  |  ✔  | UA_Boolean              |
+------------------------+----------------------------------------+-----+-----+-------------------------+
| userExecutable         | UA_ATTRIBUTEID_USEREXECUTABLE          |  ✔  |  ✔  | UA_Boolean              |
+------------------------+----------------------------------------+-----+-----+-------------------------+

The Basenode attributes NodeId and NodeClass uniquely identify that node and cannot be changed (changing them is equal to creating a new node). The DataType, ValueRank and ArrayDimensions are not part of the node attributes in open62541, but instead contained in the UA_Variant data value of that a variable or variableType node (change the value to change these as well).

Let us use one of some of these functions to slightly alter the Objects node to have a more localized displayname. We will begin on the serverside.::

    #include <stdio.h>
    #include <signal.h>

    # include "ua_types.h"
    # include "ua_server.h"
    # include "logger_stdout.h"
    # include "networklayer_tcp.h"

    UA_Boolean running;

    void stopHandler(int signal) {
      running = 0;
    }

    int main(void) {
      signal(SIGINT,  stopHandler);
      signal(SIGTERM, stopHandler);
      
      UA_Server *server = UA_Server_new(UA_ServerConfig_standard);
      UA_Server_addNetworkLayer(server, ServerNetworkLayerTCP_new(UA_ConnectionConfig_standard, 16664));
      running = UA_TRUE;
      
      UA_LocalizedText objectsLocale = UA_LOCALIZEDTEXT("de_DE","Objekkkte");
      UA_Server_setAttribute_diplayName(server, UA_NODEID_NUMERIC(0, UA_NS0ID_OBJECTSFOLDER), &objectsLocale);

      UA_Server_run(server, 1, &running);
      UA_Server_delete(server);
      
      printf("Bye\n");
      return 0;
    }

German speakers (and maybe others too) will immediately notice that the localized text is misspelled. There are too many "k"'s there. We will have to fix that, and for practice we will do that using the client.::

    #include <stdio.h>

    #include "ua_types.h"
    #include "ua_server.h"
    #include "ua_client.h"
    #include "logger_stdout.h"
    #include "networklayer_tcp.h"

    int main(void) {
      UA_Client *client = UA_Client_new(UA_ClientConfig_standard, Logger_Stdout_new());
      UA_StatusCode retval = UA_Client_connect(client, ClientNetworkLayerTCP_connect, "opc.tcp://localhost:16664");
      if(retval != UA_STATUSCODE_GOOD) {
        UA_Client_delete(client);
        return retval;
      }
      
      UA_LocalizedText localeName = UA_LOCALIZEDTEXT("de_DE", "Objekte");
      retval = UA_Client_setAttribute_displayName(client, UA_NODEID_NUMERIC(0, UA_NS0ID_OBJECTSFOLDER), &localeName);
      
      UA_Client_disconnect(client);
      UA_Client_delete(client);
      return 0;
    } 

Setting Variable contents
-------------------------

In theory, you could use the previously introduced setAttributeValue (or getAttributeValue) to manipulate the contents of variables. This is true for the client, whose only other method of interaction would be filling out a manual write request. We will explore this method first and then take a look at some better ways to handle variables on the server side.

We will first create a new variable on the server side during startup to introduce variables and variants, which might be quite daunting at first. We will then update it once from the serverside.::

    #include <stdio.h>
    #include <signal.h>

    # include "ua_types.h"
    # include "ua_server.h"
    # include "logger_stdout.h"
    # include "networklayer_tcp.h"

    UA_Boolean running;

    void stopHandler(int signal) {
      running = 0;
    }

    int main(void) {
      signal(SIGINT,  stopHandler);
      signal(SIGTERM, stopHandler);

      UA_Server *server = UA_Server_new(UA_ServerConfig_standard);
      UA_Server_addNetworkLayer(server, ServerNetworkLayerTCP_new(UA_ConnectionConfig_standard, 16664));
      running = UA_TRUE;

      // Create a Int32 as value
      UA_Variant *myValueVariant = UA_Variant_new();
      UA_Int32 myValue = 42;
      UA_Variant_setScalarCopy(myValueVariant, &myValue, &UA_TYPES[UA_TYPES_INT32]);
      
      // Create a variable node containing this value
      UA_NodeId myVarNode;
      UA_Server_addVariableNode(server, 
                                UA_NODEID_NUMERIC(1,12345), 
                                UA_QUALIFIEDNAME(1, "MyVar"), 
                                UA_LOCALIZEDTEXT("en_EN", "MyVar"),
                                UA_LOCALIZEDTEXT("en_EN", "My Variable Node"), 
                                UA_NODEID_NUMERIC(0, UA_NS0ID_OBJECTSFOLDER), 
                                UA_NODEID_NUMERIC(0, UA_NS0ID_HASCOMPONENT),
                                0, 0, myValueVariant, &myVarNode
                              );
      
      // Update the value to 43
      UA_Variant *updateMyValueVariant = UA_Variant_new();
      myValue = 22;
      UA_Variant_setScalarCopy(updateMyValueVariant, &myValue, &UA_TYPES[UA_TYPES_INT32]);
      UA_Server_setAttribute_value(server, UA_NODEID_NUMERIC(1,12345), updateMyValueVariant);
      
      UA_Server_run(server, 1, &running);
      UA_Server_delete(server);

      printf("Bye\n");
      return 0;
    }

Let's take a closer look at what was done here. You already know the *UA_(Server|Client)_add<Type>Node* from the previous tutorial. What is new is the variant datatype. A variant is a container for an arbitrary OPC UA builtin type, which is stored in the field ```(void *) variant->data```. Note that this field is void, which is the same kind of low-level polymorphism. So we need to also store the dataType along with the variant to distinguish between contents. A variant can always contain nothing at all, which is a NULL pointer. Variants can also contain arrays of builtin types. In that case the arrayDimensions and arrayDimensionsSize fields of the variant would be set.

Note that some UA Client (like UAExpert) will interpret the empty variant to be a UA_Boolean.

Since it is quite complicated to setup a variant by hand, there are four basic functions you need to be aware of:

  * **UA_Variant_setScalar** will set the contents of the variant to be the precice pointer/object that you pass to the call. Make sure to never deallocate that object while the variant exists!
  * **UA_Variant_setScalarCopy** will copy the object pointed to into a new object of the same type and attach that to the variant.
  * **UA_Variant_setArray** will set the contents of the variant to be an array and point to the exact pointer/object that you passed the call.
  * **UA_Variant_setArrayCopy** will create a copy of a memory region you passed/pointed to and consider it to be an array (1d) of n consequitive objects of the given type.
  
Many function inside the stack create copies of nodes, including their pointed to contents (deep copies), so don't bet on getting a pointer you passed into a variant back when reexamining the node returned by another API call via the stack.

Using setScalarCopy(), we easily created a variant containing a copy of myValue inside the variant. We then added that variant into a new variable node, which was the updated.

DataSource nodes and callbacks
------------------------------

The client **must** use the read/write services to interact with a server. Since setAttributeValue is a high-level abstraction of the write service, updating values from the client should be derivable from the previous example.

The serverside however has a far niftier way to deal with variables, particularly the kind of variable that updates itself continuously. You may notice that we lost control over updating the variable's integer as soon as we entered the main look... what if this value needs to be updated regulary?

The server has a unique way of dealing with variants. Instead of reading a builtin type attached to the variant, the variant can point to a function. Whenever a variable node is read and the variant accessed, that function will be called and asked to provide a UA_DataValue that will be send to the client. The concept of calling a function when something inside the stack happens is a ``callback function``. Callback function must have a fixed format, even though you declare them in userspace. You cannot change the type, number or sequence of arguments, and neither can you alter the return type.

Let's turn myVar into an access counter.::

    #include <stdio.h>
    #include <signal.h>

    # include "ua_types.h"
    # include "ua_server.h"
    # include "logger_stdout.h"
    # include "networklayer_tcp.h"

    UA_Boolean running;
    UA_Int32 global_accessCounter = 0;

    void stopHandler(int signal) {
      running = 0;
    }

    static UA_StatusCode readMyVar(void *handle, UA_Boolean sourceTimeStamp, const UA_NumericRange *range, UA_DataValue *value) {
      global_accessCounter++;
      value->hasValue = UA_TRUE;
      UA_Variant_setScalarCopy(&value->value, &global_accessCounter, &UA_TYPES[UA_TYPES_INT32]);
      return UA_STATUSCODE_GOOD;
    }

    int main(void) {
      signal(SIGINT,  stopHandler);
      signal(SIGTERM, stopHandler);

      UA_Server *server = UA_Server_new(UA_ServerConfig_standard);
      UA_Server_addNetworkLayer(server, ServerNetworkLayerTCP_new(UA_ConnectionConfig_standard, 16664));
      running = UA_TRUE;
      
      UA_DataSource myDataSource = (UA_DataSource) {.handle = NULL, .read = readMyVar, .write = NULL};
      UA_Server_addDataSourceVariableNode(server, myDataSource, UA_QUALIFIEDNAME(1, "MyVar"), UA_NODEID_NUMERIC(1,12345),
                                          UA_NODEID_NUMERIC(0, UA_NS0ID_OBJECTSFOLDER), UA_NODEID_NUMERIC(0, UA_NS0ID_ORGANIZES), NULL);
      
      UA_Server_run(server, 1, &running);
      UA_Server_delete(server);

      printf("Bye\n");
      return 0;
    }

As you can see, we created a dataSource in main() and pointed the .read field to our read routine. Obviously, you could do the same with write, in which case your function would be called when the write service tries to access this node. The .handle property of the datasource is a pass through argument; this argument will be passed to your function each time it is called and it can be anything you eant (it is also a void* polymorphism). Handles are very handy if for example you want to access the server within your write function, which you can just pass along with the datasource.

The node creation using ```UA_Server_addDataSourceVariableNode``` deviates from the high level function we have encountered so far; it is far older then the high level abstractions and pretty well tested. If you need to alter attributes not specified in the function, you will have to use setAttributeValue().

If you run this example and access the server with UA Expert, you will notice that the counter hops by multiple counts when you read it. That's because UA Expert does actually read the node multiple times.

Callbacks and handles are a very important concept of open62541 and we will encounter them again in following tutorials. If this concept is giving you a minor headache, try to think of callbacks as interrupts; the server needs your help handling a certain event and asks your functions how to do it.

Conclusion
----------

In this tutorial you have learned how to harness variable contents to do your bidding. You can now create dynamic read/write callbacks that can update your data contents on the fly, even if the server is running its main loop. However, our nodes are out of sync with object oriented concepts - we are not using any of the Type/Inheritance/Objectmodel strengths that OPC UA provides yet. We will mend that in our next tutorial, :doc:`tutorial_noderelations`.

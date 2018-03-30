.. _pubsub:

Publish/Subscribe
=================

Work in progress!
This part will be a new chapter later.

TODO: write general PubSub introduction

The Publish/Subscribe (PubSub) extension for OPC UA enables fast and efficient
1:m communication. The PubSub extension is protocol agnostic and can be used
with broker based protocols like MQTT and AMQP or brokerless implementations like UDP-Multicasting.

The PubSub API uses the following scheme:

1. Create a configuration for the needed PubSub element.

2. Call the add[element] function and pass in the configuration.

3. The add[element] function returns the unique nodeId of the internally created element.

Take a look on the PubSub Tutorials for mor details about the API usage.
Connections
-----------

.. code-block:: c

   
   typedef struct{
       UA_String name;
       UA_Boolean enabled;
       union{ //std: valid types UInt or String
           UA_UInt32 numeric;
           UA_String string;
       }publisherId;
       UA_String transportProfileUri;
       UA_Variant address;
       size_t connectionPropertiesSize;
       UA_KeyValuePair *connectionProperties;
       UA_Variant connectionTransportSettings;
   } UA_PubSubConnectionConfig;
   
   UA_StatusCode
   UA_PubSubConnection_getConfig(UA_Server *server, UA_NodeId connectionIdentifier,
                                 UA_PubSubConnectionConfig *config);
   
**Create and Remove Connections**

.. code-block:: c

   
   UA_StatusCode
   UA_Server_addPubSubConnection(UA_Server *server, const UA_PubSubConnectionConfig *connectionConfig,
                                 UA_NodeId *connectionIdentifier);
   
   UA_StatusCode
   UA_Server_removePubSubConnection(UA_Server *server, UA_NodeId connectionIdentifier);

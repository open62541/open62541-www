.. _client:

Client
======

The client implementation allows remote access to all OPC UA services. For
convenience, some functionality has been wrapped in :ref:`high-level
abstractions <client-highlevel>`.

**However**: At this time, the client does not yet contain its own thread or
event-driven main-loop. So the client will not perform any actions
automatically in the background. This is especially relevant for
subscriptions. The user will have to periodically call
`UA_Client_Subscriptions_manuallySendPublishRequest`. See also :ref:`here
<client-subscriptions>`.


.. include:: client_config.rst

Client Lifecycle
----------------

.. code-block:: c

   
   /* Create a new client */
   UA_Client *
   UA_Client_new(UA_ClientConfig config);
   
   /* Creates a new secure client with the required configuration, certificate
    * privatekey, trustlist and revocation list.
    *
    * @param  config                   new secure configuration for client
    * @param  certificate              client certificate
    * @param  privateKey               client's private key
    * @param  remoteCertificate        server certificate form the endpoints
    * @param  trustList                list of trustable certificate
    * @param  trustListSize            count of trustList
    * @param  revocationList           list of revoked digital certificate
    * @param  revocationListSize       count of revocationList
    * @param  securityPolicyFunction   securityPolicy function
    * @return Returns a client configuration for secure channel */
   UA_Client *
   UA_Client_secure_new(UA_ClientConfig config, UA_ByteString certificate,
                        UA_ByteString privateKey, const UA_ByteString *remoteCertificate,
                        const UA_ByteString *trustList, size_t trustListSize,
                        const UA_ByteString *revocationList, size_t revocationListSize,
                        UA_SecurityPolicy_Func securityPolicyFunction);
   
   /* Get the client connection status */
   UA_ClientState
   UA_Client_getState(UA_Client *client);
   
   /* Get the client configuration */
   UA_ClientConfig *
   UA_Client_getConfig(UA_Client *client);
   
   /* Get the client context */
   static UA_INLINE void *
   UA_Client_getContext(UA_Client *client) {
       UA_ClientConfig *config = UA_Client_getConfig(client);
       if(!config)
           return NULL;
       return config->clientContext;
   }
   
   /* Reset a client */
   void
   UA_Client_reset(UA_Client *client);
   
   /* Delete a client */
   void
   UA_Client_delete(UA_Client *client);
   
Connect to a Server
-------------------

.. code-block:: c

   
   typedef void (*UA_ClientAsyncServiceCallback)(UA_Client *client, void *userdata,
           UA_UInt32 requestId, void *response);
   
   /* Connect to the server
    *
    * @param client to use
    * @param endpointURL to connect (for example "opc.tcp://localhost:4840")
    * @return Indicates whether the operation succeeded or returns an error code */
   UA_StatusCode
   UA_Client_connect(UA_Client *client, const char *endpointUrl);
   
   UA_StatusCode
   UA_Client_connect_async (UA_Client *client, const char *endpointUrl,
                            UA_ClientAsyncServiceCallback callback,
                            void *connected);
   
   /* Connect to the server without creating a session
    *
    * @param client to use
    * @param endpointURL to connect (for example "opc.tcp://localhost:4840")
    * @return Indicates whether the operation succeeded or returns an error code */
   UA_StatusCode
   UA_Client_connect_noSession(UA_Client *client, const char *endpointUrl);
   
   /* Connect to the selected server with the given username and password
    *
    * @param client to use
    * @param endpointURL to connect (for example "opc.tcp://localhost:4840")
    * @param username
    * @param password
    * @return Indicates whether the operation succeeded or returns an error code */
   UA_StatusCode
   UA_Client_connect_username(UA_Client *client, const char *endpointUrl,
                              const char *username, const char *password);
   
   /* Disconnect and close a connection to the selected server */
   UA_StatusCode
   UA_Client_disconnect(UA_Client *client);
   
   UA_StatusCode
   UA_Client_disconnect_async(UA_Client *client, UA_UInt32 *requestId);
   
   /* Close a connection to the selected server */
   UA_DEPRECATED static UA_INLINE UA_StatusCode
   UA_Client_close(UA_Client *client) {
       return UA_Client_disconnect(client);
   }
   
Discovery
---------

.. code-block:: c

   
   /* Gets a list of endpoints of a server
    *
    * @param client to use. Must be connected to the same endpoint given in
    *        serverUrl or otherwise in disconnected state.
    * @param serverUrl url to connect (for example "opc.tcp://localhost:4840")
    * @param endpointDescriptionsSize size of the array of endpoint descriptions
    * @param endpointDescriptions array of endpoint descriptions that is allocated
    *        by the function (you need to free manually)
    * @return Indicates whether the operation succeeded or returns an error code */
   UA_StatusCode
   UA_Client_getEndpoints(UA_Client *client, const char *serverUrl,
                          size_t* endpointDescriptionsSize,
                          UA_EndpointDescription** endpointDescriptions);
   
   /* Gets a list of all registered servers at the given server.
    *
    * You can pass an optional filter for serverUris. If the given server is not registered,
    * an empty array will be returned. If the server is registered, only that application
    * description will be returned.
    *
    * Additionally you can optionally indicate which locale you want for the server name
    * in the returned application description. The array indicates the order of preference.
    * A server may have localized names.
    *
    * @param client to use. Must be connected to the same endpoint given in
    *        serverUrl or otherwise in disconnected state.
    * @param serverUrl url to connect (for example "opc.tcp://localhost:4840")
    * @param serverUrisSize Optional filter for specific server uris
    * @param serverUris Optional filter for specific server uris
    * @param localeIdsSize Optional indication which locale you prefer
    * @param localeIds Optional indication which locale you prefer
    * @param registeredServersSize size of returned array, i.e., number of found/registered servers
    * @param registeredServers array containing found/registered servers
    * @return Indicates whether the operation succeeded or returns an error code */
   UA_StatusCode
   UA_Client_findServers(UA_Client *client, const char *serverUrl,
                         size_t serverUrisSize, UA_String *serverUris,
                         size_t localeIdsSize, UA_String *localeIds,
                         size_t *registeredServersSize,
                         UA_ApplicationDescription **registeredServers);
   
   #ifdef UA_ENABLE_DISCOVERY
   /* Get a list of all known server in the network. Only supported by LDS servers.
    *
    * @param client to use. Must be connected to the same endpoint given in
    * serverUrl or otherwise in disconnected state.
    * @param serverUrl url to connect (for example "opc.tcp://localhost:4840")
    * @param startingRecordId optional. Only return the records with an ID higher
    *        or equal the given. Can be used for pagination to only get a subset of
    *        the full list
    * @param maxRecordsToReturn optional. Only return this number of records
   
    * @param serverCapabilityFilterSize optional. Filter the returned list to only
    *        get servers with given capabilities, e.g. "LDS"
    * @param serverCapabilityFilter optional. Filter the returned list to only get
    *        servers with given capabilities, e.g. "LDS"
    * @param serverOnNetworkSize size of returned array, i.e., number of
    *        known/registered servers
    * @param serverOnNetwork array containing known/registered servers
    * @return Indicates whether the operation succeeded or returns an error code */
   UA_StatusCode
   UA_Client_findServersOnNetwork(UA_Client *client, const char *serverUrl,
                                  UA_UInt32 startingRecordId, UA_UInt32 maxRecordsToReturn,
                                  size_t serverCapabilityFilterSize, UA_String *serverCapabilityFilter,
                                  size_t *serverOnNetworkSize, UA_ServerOnNetwork **serverOnNetwork);
   #endif
   
.. _client-services:

Services
--------

The raw OPC UA services are exposed to the client. But most of them time, it
is better to use the convenience functions from ``ua_client_highlevel.h``
that wrap the raw services.

.. code-block:: c

   /* Don't use this function. Use the type versions below instead. */
   void
   __UA_Client_Service(UA_Client *client, const void *request,
                       const UA_DataType *requestType, void *response,
                       const UA_DataType *responseType);
   
   /*
    * Attribute Service Set
    * ^^^^^^^^^^^^^^^^^^^^^ */
   static UA_INLINE UA_ReadResponse
   UA_Client_Service_read(UA_Client *client, const UA_ReadRequest request) {
       UA_ReadResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_READREQUEST],
                           &response, &UA_TYPES[UA_TYPES_READRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_WriteResponse
   UA_Client_Service_write(UA_Client *client, const UA_WriteRequest request) {
       UA_WriteResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_WRITEREQUEST],
                           &response, &UA_TYPES[UA_TYPES_WRITERESPONSE]);
       return response;
   }
   
   /*
    * Method Service Set
    * ^^^^^^^^^^^^^^^^^^ */
   #ifdef UA_ENABLE_METHODCALLS
   static UA_INLINE UA_CallResponse
   UA_Client_Service_call(UA_Client *client, const UA_CallRequest request) {
       UA_CallResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_CALLREQUEST],
                           &response, &UA_TYPES[UA_TYPES_CALLRESPONSE]);
       return response;
   }
   #endif
   
   /*
    * NodeManagement Service Set
    * ^^^^^^^^^^^^^^^^^^^^^^^^^^ */
   static UA_INLINE UA_AddNodesResponse
   UA_Client_Service_addNodes(UA_Client *client, const UA_AddNodesRequest request) {
       UA_AddNodesResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_ADDNODESREQUEST],
                           &response, &UA_TYPES[UA_TYPES_ADDNODESRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_AddReferencesResponse
   UA_Client_Service_addReferences(UA_Client *client,
                                   const UA_AddReferencesRequest request) {
       UA_AddReferencesResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_ADDREFERENCESREQUEST],
                           &response, &UA_TYPES[UA_TYPES_ADDREFERENCESRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_DeleteNodesResponse
   UA_Client_Service_deleteNodes(UA_Client *client,
                                 const UA_DeleteNodesRequest request) {
       UA_DeleteNodesResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_DELETENODESREQUEST],
                           &response, &UA_TYPES[UA_TYPES_DELETENODESRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_DeleteReferencesResponse
   UA_Client_Service_deleteReferences(UA_Client *client,
                                      const UA_DeleteReferencesRequest request) {
       UA_DeleteReferencesResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_DELETEREFERENCESREQUEST],
                           &response, &UA_TYPES[UA_TYPES_DELETEREFERENCESRESPONSE]);
       return response;
   }
   
   /*
    * View Service Set
    * ^^^^^^^^^^^^^^^^ */
   static UA_INLINE UA_BrowseResponse
   UA_Client_Service_browse(UA_Client *client, const UA_BrowseRequest request) {
       UA_BrowseResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_BROWSEREQUEST],
                           &response, &UA_TYPES[UA_TYPES_BROWSERESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_BrowseNextResponse
   UA_Client_Service_browseNext(UA_Client *client,
                                const UA_BrowseNextRequest request) {
       UA_BrowseNextResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_BROWSENEXTREQUEST],
                           &response, &UA_TYPES[UA_TYPES_BROWSENEXTRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_TranslateBrowsePathsToNodeIdsResponse
   UA_Client_Service_translateBrowsePathsToNodeIds(UA_Client *client,
                           const UA_TranslateBrowsePathsToNodeIdsRequest request) {
       UA_TranslateBrowsePathsToNodeIdsResponse response;
       __UA_Client_Service(client, &request,
                           &UA_TYPES[UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSREQUEST],
                           &response,
                           &UA_TYPES[UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_RegisterNodesResponse
   UA_Client_Service_registerNodes(UA_Client *client,
                                   const UA_RegisterNodesRequest request) {
       UA_RegisterNodesResponse response;
       __UA_Client_Service(client, &request, &UA_TYPES[UA_TYPES_REGISTERNODESREQUEST],
                           &response, &UA_TYPES[UA_TYPES_REGISTERNODESRESPONSE]);
       return response;
   }
   
   static UA_INLINE UA_UnregisterNodesResponse
   UA_Client_Service_unregisterNodes(UA_Client *client,
                                     const UA_UnregisterNodesRequest request) {
       UA_UnregisterNodesResponse response;
       __UA_Client_Service(client, &request,
                           &UA_TYPES[UA_TYPES_UNREGISTERNODESREQUEST],
                           &response, &UA_TYPES[UA_TYPES_UNREGISTERNODESRESPONSE]);
       return response;
   }
   
   /*
    * Query Service Set
    * ^^^^^^^^^^^^^^^^^ */

Every type is assigned an index in an array containing the type descriptions.
These descriptions are used during type handling (copying, deletion,
binary encoding, ...).

.. code-block:: c

   #define UA_TYPES_COUNT 223
   extern const UA_DataType UA_TYPES[UA_TYPES_COUNT];
   
Boolean
^^^^^^^

.. code-block:: c

   #define UA_TYPES_BOOLEAN 0
   
SByte
^^^^^

.. code-block:: c

   #define UA_TYPES_SBYTE 1
   
Byte
^^^^

.. code-block:: c

   #define UA_TYPES_BYTE 2
   
Int16
^^^^^

.. code-block:: c

   #define UA_TYPES_INT16 3
   
UInt16
^^^^^^

.. code-block:: c

   #define UA_TYPES_UINT16 4
   
Int32
^^^^^

.. code-block:: c

   #define UA_TYPES_INT32 5
   
UInt32
^^^^^^

.. code-block:: c

   #define UA_TYPES_UINT32 6
   
Int64
^^^^^

.. code-block:: c

   #define UA_TYPES_INT64 7
   
UInt64
^^^^^^

.. code-block:: c

   #define UA_TYPES_UINT64 8
   
Float
^^^^^

.. code-block:: c

   #define UA_TYPES_FLOAT 9
   
Double
^^^^^^

.. code-block:: c

   #define UA_TYPES_DOUBLE 10
   
String
^^^^^^

.. code-block:: c

   #define UA_TYPES_STRING 11
   
DateTime
^^^^^^^^

.. code-block:: c

   #define UA_TYPES_DATETIME 12
   
Guid
^^^^

.. code-block:: c

   #define UA_TYPES_GUID 13
   
ByteString
^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_BYTESTRING 14
   
XmlElement
^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_XMLELEMENT 15
   
NodeId
^^^^^^

.. code-block:: c

   #define UA_TYPES_NODEID 16
   
ExpandedNodeId
^^^^^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_EXPANDEDNODEID 17
   
StatusCode
^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_STATUSCODE 18
   
QualifiedName
^^^^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_QUALIFIEDNAME 19
   
LocalizedText
^^^^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_LOCALIZEDTEXT 20
   
ExtensionObject
^^^^^^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_EXTENSIONOBJECT 21
   
DataValue
^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_DATAVALUE 22
   
Variant
^^^^^^^

.. code-block:: c

   #define UA_TYPES_VARIANT 23
   
DiagnosticInfo
^^^^^^^^^^^^^^

.. code-block:: c

   #define UA_TYPES_DIAGNOSTICINFO 24
   
SemanticChangeStructureDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId affected;
       UA_NodeId affectedType;
   } UA_SemanticChangeStructureDataType;
   
   #define UA_TYPES_SEMANTICCHANGESTRUCTUREDATATYPE 25
   
ViewAttributes
^^^^^^^^^^^^^^
The attributes for a view node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean containsNoLoops;
       UA_Byte eventNotifier;
   } UA_ViewAttributes;
   
   #define UA_TYPES_VIEWATTRIBUTES 26
   
UadpNetworkMessageContentMask
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_UADPNETWORKMESSAGECONTENTMASK_PUBLISHERID = 1,
       UA_UADPNETWORKMESSAGECONTENTMASK_GROUPHEADER = 2,
       UA_UADPNETWORKMESSAGECONTENTMASK_WRITERGROUPID = 4,
       UA_UADPNETWORKMESSAGECONTENTMASK_GROUPVERSION = 8,
       UA_UADPNETWORKMESSAGECONTENTMASK_NETWORKMESSAGENUMBER = 16,
       UA_UADPNETWORKMESSAGECONTENTMASK_SEQUENCENUMBER = 32,
       UA_UADPNETWORKMESSAGECONTENTMASK_PAYLOADHEADER = 64,
       UA_UADPNETWORKMESSAGECONTENTMASK_TIMESTAMP = 128,
       UA_UADPNETWORKMESSAGECONTENTMASK_PICOSECONDS = 256,
       UA_UADPNETWORKMESSAGECONTENTMASK_DATASETCLASSID = 512,
       UA_UADPNETWORKMESSAGECONTENTMASK_PROMOTEDFIELDS = 1024,
       __UA_UADPNETWORKMESSAGECONTENTMASK_FORCE32BIT = 0x7fffffff
   } UA_UadpNetworkMessageContentMask;
   UA_STATIC_ASSERT(sizeof(UA_UadpNetworkMessageContentMask) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_UADPNETWORKMESSAGECONTENTMASK 27
   
ElementOperand
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 index;
   } UA_ElementOperand;
   
   #define UA_TYPES_ELEMENTOPERAND 28
   
VariableAttributes
^^^^^^^^^^^^^^^^^^
The attributes for a variable node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Variant value;
       UA_NodeId dataType;
       UA_Int32 valueRank;
       size_t arrayDimensionsSize;
       UA_UInt32 *arrayDimensions;
       UA_Byte accessLevel;
       UA_Byte userAccessLevel;
       UA_Double minimumSamplingInterval;
       UA_Boolean historizing;
   } UA_VariableAttributes;
   
   #define UA_TYPES_VARIABLEATTRIBUTES 29
   
EventFieldList
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       size_t eventFieldsSize;
       UA_Variant *eventFields;
   } UA_EventFieldList;
   
   #define UA_TYPES_EVENTFIELDLIST 30
   
MonitoredItemCreateResult
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_UInt32 monitoredItemId;
       UA_Double revisedSamplingInterval;
       UA_UInt32 revisedQueueSize;
       UA_ExtensionObject filterResult;
   } UA_MonitoredItemCreateResult;
   
   #define UA_TYPES_MONITOREDITEMCREATERESULT 31
   
ServerDiagnosticsSummaryDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 serverViewCount;
       UA_UInt32 currentSessionCount;
       UA_UInt32 cumulatedSessionCount;
       UA_UInt32 securityRejectedSessionCount;
       UA_UInt32 rejectedSessionCount;
       UA_UInt32 sessionTimeoutCount;
       UA_UInt32 sessionAbortCount;
       UA_UInt32 currentSubscriptionCount;
       UA_UInt32 cumulatedSubscriptionCount;
       UA_UInt32 publishingIntervalCount;
       UA_UInt32 securityRejectedRequestsCount;
       UA_UInt32 rejectedRequestsCount;
   } UA_ServerDiagnosticsSummaryDataType;
   
   #define UA_TYPES_SERVERDIAGNOSTICSSUMMARYDATATYPE 32
   
ContentFilterElementResult
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t operandStatusCodesSize;
       UA_StatusCode *operandStatusCodes;
       size_t operandDiagnosticInfosSize;
       UA_DiagnosticInfo *operandDiagnosticInfos;
   } UA_ContentFilterElementResult;
   
   #define UA_TYPES_CONTENTFILTERELEMENTRESULT 33
   
LiteralOperand
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Variant value;
   } UA_LiteralOperand;
   
   #define UA_TYPES_LITERALOPERAND 34
   
UadpDataSetMessageContentMask
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_UADPDATASETMESSAGECONTENTMASK_TIMESTAMP = 1,
       UA_UADPDATASETMESSAGECONTENTMASK_PICOSECONDS = 2,
       UA_UADPDATASETMESSAGECONTENTMASK_STATUS = 4,
       UA_UADPDATASETMESSAGECONTENTMASK_MAJORVERSION = 8,
       UA_UADPDATASETMESSAGECONTENTMASK_MINORVERSION = 16,
       UA_UADPDATASETMESSAGECONTENTMASK_SEQUENCENUMBER = 32,
       __UA_UADPDATASETMESSAGECONTENTMASK_FORCE32BIT = 0x7fffffff
   } UA_UadpDataSetMessageContentMask;
   UA_STATIC_ASSERT(sizeof(UA_UadpDataSetMessageContentMask) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_UADPDATASETMESSAGECONTENTMASK 35
   
MessageSecurityMode
^^^^^^^^^^^^^^^^^^^
The type of security to use on a message.

.. code-block:: c

   typedef enum {
       UA_MESSAGESECURITYMODE_INVALID = 0,
       UA_MESSAGESECURITYMODE_NONE = 1,
       UA_MESSAGESECURITYMODE_SIGN = 2,
       UA_MESSAGESECURITYMODE_SIGNANDENCRYPT = 3,
       __UA_MESSAGESECURITYMODE_FORCE32BIT = 0x7fffffff
   } UA_MessageSecurityMode;
   UA_STATIC_ASSERT(sizeof(UA_MessageSecurityMode) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_MESSAGESECURITYMODE 36
   
UtcTime
^^^^^^^
A date/time value specified in Universal Coordinated Time (UTC).

.. code-block:: c

   typedef UA_DateTime UA_UtcTime;
   
   #define UA_TYPES_UTCTIME 37
   
UserIdentityToken
^^^^^^^^^^^^^^^^^
A base type for a user identity token.

.. code-block:: c

   typedef struct {
       UA_String policyId;
   } UA_UserIdentityToken;
   
   #define UA_TYPES_USERIDENTITYTOKEN 38
   
ServiceCounterDataType
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 totalCount;
       UA_UInt32 errorCount;
   } UA_ServiceCounterDataType;
   
   #define UA_TYPES_SERVICECOUNTERDATATYPE 39
   
MonitoredItemNotification
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       UA_DataValue value;
   } UA_MonitoredItemNotification;
   
   #define UA_TYPES_MONITOREDITEMNOTIFICATION 40
   
StructureType
^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_STRUCTURETYPE_STRUCTURE = 0,
       UA_STRUCTURETYPE_STRUCTUREWITHOPTIONALFIELDS = 1,
       UA_STRUCTURETYPE_UNION = 2,
       __UA_STRUCTURETYPE_FORCE32BIT = 0x7fffffff
   } UA_StructureType;
   UA_STATIC_ASSERT(sizeof(UA_StructureType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_STRUCTURETYPE 41
   
ResponseHeader
^^^^^^^^^^^^^^
The header passed with every server response.

.. code-block:: c

   typedef struct {
       UA_DateTime timestamp;
       UA_UInt32 requestHandle;
       UA_StatusCode serviceResult;
       UA_DiagnosticInfo serviceDiagnostics;
       size_t stringTableSize;
       UA_String *stringTable;
       UA_ExtensionObject additionalHeader;
   } UA_ResponseHeader;
   
   #define UA_TYPES_RESPONSEHEADER 42
   
SignatureData
^^^^^^^^^^^^^
A digital signature.

.. code-block:: c

   typedef struct {
       UA_String algorithm;
       UA_ByteString signature;
   } UA_SignatureData;
   
   #define UA_TYPES_SIGNATUREDATA 43
   
NetworkAddressUrlDataType
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String networkInterface;
       UA_String url;
   } UA_NetworkAddressUrlDataType;
   
   #define UA_TYPES_NETWORKADDRESSURLDATATYPE 44
   
ModifySubscriptionResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_Double revisedPublishingInterval;
       UA_UInt32 revisedLifetimeCount;
       UA_UInt32 revisedMaxKeepAliveCount;
   } UA_ModifySubscriptionResponse;
   
   #define UA_TYPES_MODIFYSUBSCRIPTIONRESPONSE 45
   
NodeAttributes
^^^^^^^^^^^^^^
The base attributes for all nodes.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
   } UA_NodeAttributes;
   
   #define UA_TYPES_NODEATTRIBUTES 46
   
ActivateSessionResponse
^^^^^^^^^^^^^^^^^^^^^^^
Activates a session with the server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_ByteString serverNonce;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_ActivateSessionResponse;
   
   #define UA_TYPES_ACTIVATESESSIONRESPONSE 47
   
EnumField
^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int64 value;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_String name;
   } UA_EnumField;
   
   #define UA_TYPES_ENUMFIELD 48
   
VariableTypeAttributes
^^^^^^^^^^^^^^^^^^^^^^
The attributes for a variable type node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Variant value;
       UA_NodeId dataType;
       UA_Int32 valueRank;
       size_t arrayDimensionsSize;
       UA_UInt32 *arrayDimensions;
       UA_Boolean isAbstract;
   } UA_VariableTypeAttributes;
   
   #define UA_TYPES_VARIABLETYPEATTRIBUTES 49
   
CallMethodResult
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t inputArgumentResultsSize;
       UA_StatusCode *inputArgumentResults;
       size_t inputArgumentDiagnosticInfosSize;
       UA_DiagnosticInfo *inputArgumentDiagnosticInfos;
       size_t outputArgumentsSize;
       UA_Variant *outputArguments;
   } UA_CallMethodResult;
   
   #define UA_TYPES_CALLMETHODRESULT 50
   
MonitoringMode
^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_MONITORINGMODE_DISABLED = 0,
       UA_MONITORINGMODE_SAMPLING = 1,
       UA_MONITORINGMODE_REPORTING = 2,
       __UA_MONITORINGMODE_FORCE32BIT = 0x7fffffff
   } UA_MonitoringMode;
   UA_STATIC_ASSERT(sizeof(UA_MonitoringMode) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_MONITORINGMODE 51
   
SetMonitoringModeResponse
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_SetMonitoringModeResponse;
   
   #define UA_TYPES_SETMONITORINGMODERESPONSE 52
   
BrowseResultMask
^^^^^^^^^^^^^^^^
A bit mask which specifies what should be returned in a browse response.

.. code-block:: c

   typedef enum {
       UA_BROWSERESULTMASK_NONE = 0,
       UA_BROWSERESULTMASK_REFERENCETYPEID = 1,
       UA_BROWSERESULTMASK_ISFORWARD = 2,
       UA_BROWSERESULTMASK_NODECLASS = 4,
       UA_BROWSERESULTMASK_BROWSENAME = 8,
       UA_BROWSERESULTMASK_DISPLAYNAME = 16,
       UA_BROWSERESULTMASK_TYPEDEFINITION = 32,
       UA_BROWSERESULTMASK_ALL = 63,
       UA_BROWSERESULTMASK_REFERENCETYPEINFO = 3,
       UA_BROWSERESULTMASK_TARGETINFO = 60,
       __UA_BROWSERESULTMASK_FORCE32BIT = 0x7fffffff
   } UA_BrowseResultMask;
   UA_STATIC_ASSERT(sizeof(UA_BrowseResultMask) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_BROWSERESULTMASK 53
   
RequestHeader
^^^^^^^^^^^^^
The header passed with every server request.

.. code-block:: c

   typedef struct {
       UA_NodeId authenticationToken;
       UA_DateTime timestamp;
       UA_UInt32 requestHandle;
       UA_UInt32 returnDiagnostics;
       UA_String auditEntryId;
       UA_UInt32 timeoutHint;
       UA_ExtensionObject additionalHeader;
   } UA_RequestHeader;
   
   #define UA_TYPES_REQUESTHEADER 54
   
MonitoredItemModifyResult
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_Double revisedSamplingInterval;
       UA_UInt32 revisedQueueSize;
       UA_ExtensionObject filterResult;
   } UA_MonitoredItemModifyResult;
   
   #define UA_TYPES_MONITOREDITEMMODIFYRESULT 55
   
CloseSecureChannelRequest
^^^^^^^^^^^^^^^^^^^^^^^^^
Closes a secure channel.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
   } UA_CloseSecureChannelRequest;
   
   #define UA_TYPES_CLOSESECURECHANNELREQUEST 56
   
NotificationMessage
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 sequenceNumber;
       UA_DateTime publishTime;
       size_t notificationDataSize;
       UA_ExtensionObject *notificationData;
   } UA_NotificationMessage;
   
   #define UA_TYPES_NOTIFICATIONMESSAGE 57
   
CreateSubscriptionResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 subscriptionId;
       UA_Double revisedPublishingInterval;
       UA_UInt32 revisedLifetimeCount;
       UA_UInt32 revisedMaxKeepAliveCount;
   } UA_CreateSubscriptionResponse;
   
   #define UA_TYPES_CREATESUBSCRIPTIONRESPONSE 58
   
EnumDefinition
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t fieldsSize;
       UA_EnumField *fields;
   } UA_EnumDefinition;
   
   #define UA_TYPES_ENUMDEFINITION 59
   
MdnsDiscoveryConfiguration
^^^^^^^^^^^^^^^^^^^^^^^^^^
The discovery information needed for mDNS registration.

.. code-block:: c

   typedef struct {
       UA_String mdnsServerName;
       size_t serverCapabilitiesSize;
       UA_String *serverCapabilities;
   } UA_MdnsDiscoveryConfiguration;
   
   #define UA_TYPES_MDNSDISCOVERYCONFIGURATION 60
   
ParsingResult
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t dataStatusCodesSize;
       UA_StatusCode *dataStatusCodes;
       size_t dataDiagnosticInfosSize;
       UA_DiagnosticInfo *dataDiagnosticInfos;
   } UA_ParsingResult;
   
   #define UA_TYPES_PARSINGRESULT 61
   
BrowseDirection
^^^^^^^^^^^^^^^
The directions of the references to return.

.. code-block:: c

   typedef enum {
       UA_BROWSEDIRECTION_FORWARD = 0,
       UA_BROWSEDIRECTION_INVERSE = 1,
       UA_BROWSEDIRECTION_BOTH = 2,
       UA_BROWSEDIRECTION_INVALID = 3,
       __UA_BROWSEDIRECTION_FORCE32BIT = 0x7fffffff
   } UA_BrowseDirection;
   UA_STATIC_ASSERT(sizeof(UA_BrowseDirection) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_BROWSEDIRECTION 62
   
CallMethodRequest
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId objectId;
       UA_NodeId methodId;
       size_t inputArgumentsSize;
       UA_Variant *inputArguments;
   } UA_CallMethodRequest;
   
   #define UA_TYPES_CALLMETHODREQUEST 63
   
EndpointUrlListDataType
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t endpointUrlListSize;
       UA_String *endpointUrlList;
   } UA_EndpointUrlListDataType;
   
   #define UA_TYPES_ENDPOINTURLLISTDATATYPE 64
   
ReadResponse
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_DataValue *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_ReadResponse;
   
   #define UA_TYPES_READRESPONSE 65
   
TimestampsToReturn
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_TIMESTAMPSTORETURN_SOURCE = 0,
       UA_TIMESTAMPSTORETURN_SERVER = 1,
       UA_TIMESTAMPSTORETURN_BOTH = 2,
       UA_TIMESTAMPSTORETURN_NEITHER = 3,
       UA_TIMESTAMPSTORETURN_INVALID = 4,
       __UA_TIMESTAMPSTORETURN_FORCE32BIT = 0x7fffffff
   } UA_TimestampsToReturn;
   UA_STATIC_ASSERT(sizeof(UA_TimestampsToReturn) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_TIMESTAMPSTORETURN 66
   
NodeClass
^^^^^^^^^
A mask specifying the class of the node.

.. code-block:: c

   typedef enum {
       UA_NODECLASS_UNSPECIFIED = 0,
       UA_NODECLASS_OBJECT = 1,
       UA_NODECLASS_VARIABLE = 2,
       UA_NODECLASS_METHOD = 4,
       UA_NODECLASS_OBJECTTYPE = 8,
       UA_NODECLASS_VARIABLETYPE = 16,
       UA_NODECLASS_REFERENCETYPE = 32,
       UA_NODECLASS_DATATYPE = 64,
       UA_NODECLASS_VIEW = 128,
       __UA_NODECLASS_FORCE32BIT = 0x7fffffff
   } UA_NodeClass;
   UA_STATIC_ASSERT(sizeof(UA_NodeClass) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_NODECLASS 67
   
ReferenceNode
^^^^^^^^^^^^^
Specifies a reference which belongs to a node.

.. code-block:: c

   typedef struct {
       UA_NodeId referenceTypeId;
       UA_Boolean isInverse;
       UA_ExpandedNodeId targetId;
   } UA_ReferenceNode;
   
   #define UA_TYPES_REFERENCENODE 68
   
ObjectTypeAttributes
^^^^^^^^^^^^^^^^^^^^
The attributes for an object type node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean isAbstract;
   } UA_ObjectTypeAttributes;
   
   #define UA_TYPES_OBJECTTYPEATTRIBUTES 69
   
SecurityTokenRequestType
^^^^^^^^^^^^^^^^^^^^^^^^
Indicates whether a token if being created or renewed.

.. code-block:: c

   typedef enum {
       UA_SECURITYTOKENREQUESTTYPE_ISSUE = 0,
       UA_SECURITYTOKENREQUESTTYPE_RENEW = 1,
       __UA_SECURITYTOKENREQUESTTYPE_FORCE32BIT = 0x7fffffff
   } UA_SecurityTokenRequestType;
   UA_STATIC_ASSERT(sizeof(UA_SecurityTokenRequestType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_SECURITYTOKENREQUESTTYPE 70
   
CloseSessionResponse
^^^^^^^^^^^^^^^^^^^^
Closes a session with the server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_CloseSessionResponse;
   
   #define UA_TYPES_CLOSESESSIONRESPONSE 71
   
SetPublishingModeRequest
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean publishingEnabled;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
   } UA_SetPublishingModeRequest;
   
   #define UA_TYPES_SETPUBLISHINGMODEREQUEST 72
   
ServerOnNetwork
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 recordId;
       UA_String serverName;
       UA_String discoveryUrl;
       size_t serverCapabilitiesSize;
       UA_String *serverCapabilities;
   } UA_ServerOnNetwork;
   
   #define UA_TYPES_SERVERONNETWORK 73
   
DeleteMonitoredItemsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DeleteMonitoredItemsResponse;
   
   #define UA_TYPES_DELETEMONITOREDITEMSRESPONSE 74
   
ApplicationType
^^^^^^^^^^^^^^^
The types of applications.

.. code-block:: c

   typedef enum {
       UA_APPLICATIONTYPE_SERVER = 0,
       UA_APPLICATIONTYPE_CLIENT = 1,
       UA_APPLICATIONTYPE_CLIENTANDSERVER = 2,
       UA_APPLICATIONTYPE_DISCOVERYSERVER = 3,
       __UA_APPLICATIONTYPE_FORCE32BIT = 0x7fffffff
   } UA_ApplicationType;
   UA_STATIC_ASSERT(sizeof(UA_ApplicationType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_APPLICATIONTYPE 75
   
DiscoveryConfiguration
^^^^^^^^^^^^^^^^^^^^^^
A base type for discovery configuration information.

.. code-block:: c

   typedef void * UA_DiscoveryConfiguration;
   
   #define UA_TYPES_DISCOVERYCONFIGURATION 76
   
BrowseNextRequest
^^^^^^^^^^^^^^^^^
Continues one or more browse operations.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean releaseContinuationPoints;
       size_t continuationPointsSize;
       UA_ByteString *continuationPoints;
   } UA_BrowseNextRequest;
   
   #define UA_TYPES_BROWSENEXTREQUEST 77
   
ModifySubscriptionRequest
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_Double requestedPublishingInterval;
       UA_UInt32 requestedLifetimeCount;
       UA_UInt32 requestedMaxKeepAliveCount;
       UA_UInt32 maxNotificationsPerPublish;
       UA_Byte priority;
   } UA_ModifySubscriptionRequest;
   
   #define UA_TYPES_MODIFYSUBSCRIPTIONREQUEST 78
   
BrowseDescription
^^^^^^^^^^^^^^^^^
A request to browse the the references from a node.

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_BrowseDirection browseDirection;
       UA_NodeId referenceTypeId;
       UA_Boolean includeSubtypes;
       UA_UInt32 nodeClassMask;
       UA_UInt32 resultMask;
   } UA_BrowseDescription;
   
   #define UA_TYPES_BROWSEDESCRIPTION 79
   
SignedSoftwareCertificate
^^^^^^^^^^^^^^^^^^^^^^^^^
A software certificate with a digital signature.

.. code-block:: c

   typedef struct {
       UA_ByteString certificateData;
       UA_ByteString signature;
   } UA_SignedSoftwareCertificate;
   
   #define UA_TYPES_SIGNEDSOFTWARECERTIFICATE 80
   
BrowsePathTarget
^^^^^^^^^^^^^^^^
The target of the translated path.

.. code-block:: c

   typedef struct {
       UA_ExpandedNodeId targetId;
       UA_UInt32 remainingPathIndex;
   } UA_BrowsePathTarget;
   
   #define UA_TYPES_BROWSEPATHTARGET 81
   
WriteResponse
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_WriteResponse;
   
   #define UA_TYPES_WRITERESPONSE 82
   
AddNodesResult
^^^^^^^^^^^^^^
A result of an add node operation.

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_NodeId addedNodeId;
   } UA_AddNodesResult;
   
   #define UA_TYPES_ADDNODESRESULT 83
   
RegisterServerResponse
^^^^^^^^^^^^^^^^^^^^^^
Registers a server with the discovery server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_RegisterServerResponse;
   
   #define UA_TYPES_REGISTERSERVERRESPONSE 84
   
AddReferencesItem
^^^^^^^^^^^^^^^^^
A request to add a reference to the server address space.

.. code-block:: c

   typedef struct {
       UA_NodeId sourceNodeId;
       UA_NodeId referenceTypeId;
       UA_Boolean isForward;
       UA_String targetServerUri;
       UA_ExpandedNodeId targetNodeId;
       UA_NodeClass targetNodeClass;
   } UA_AddReferencesItem;
   
   #define UA_TYPES_ADDREFERENCESITEM 85
   
RegisterServer2Response
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t configurationResultsSize;
       UA_StatusCode *configurationResults;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_RegisterServer2Response;
   
   #define UA_TYPES_REGISTERSERVER2RESPONSE 86
   
DeleteReferencesResponse
^^^^^^^^^^^^^^^^^^^^^^^^
Delete one or more references from the server address space.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DeleteReferencesResponse;
   
   #define UA_TYPES_DELETEREFERENCESRESPONSE 87
   
RelativePathElement
^^^^^^^^^^^^^^^^^^^
An element in a relative path.

.. code-block:: c

   typedef struct {
       UA_NodeId referenceTypeId;
       UA_Boolean isInverse;
       UA_Boolean includeSubtypes;
       UA_QualifiedName targetName;
   } UA_RelativePathElement;
   
   #define UA_TYPES_RELATIVEPATHELEMENT 88
   
SubscriptionAcknowledgement
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 subscriptionId;
       UA_UInt32 sequenceNumber;
   } UA_SubscriptionAcknowledgement;
   
   #define UA_TYPES_SUBSCRIPTIONACKNOWLEDGEMENT 89
   
ConfigurationVersionDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 majorVersion;
       UA_UInt32 minorVersion;
   } UA_ConfigurationVersionDataType;
   
   #define UA_TYPES_CONFIGURATIONVERSIONDATATYPE 90
   
DataSetFieldContentMask
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_DATASETFIELDCONTENTMASK_STATUSCODE = 1,
       UA_DATASETFIELDCONTENTMASK_SOURCETIMESTAMP = 2,
       UA_DATASETFIELDCONTENTMASK_SERVERTIMESTAMP = 4,
       UA_DATASETFIELDCONTENTMASK_SOURCEPICOSECONDS = 8,
       UA_DATASETFIELDCONTENTMASK_SERVERPICOSECONDS = 16,
       UA_DATASETFIELDCONTENTMASK_RAWDATAENCODING = 32,
       __UA_DATASETFIELDCONTENTMASK_FORCE32BIT = 0x7fffffff
   } UA_DataSetFieldContentMask;
   UA_STATIC_ASSERT(sizeof(UA_DataSetFieldContentMask) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_DATASETFIELDCONTENTMASK 91
   
PublishedVariableDataType
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId publishedVariable;
       UA_UInt32 attributeId;
       UA_Double samplingIntervalHint;
       UA_UInt32 deadbandType;
       UA_Double deadbandValue;
       UA_String indexRange;
       UA_Variant substituteValue;
       size_t metaDataPropertiesSize;
       UA_QualifiedName *metaDataProperties;
   } UA_PublishedVariableDataType;
   
   #define UA_TYPES_PUBLISHEDVARIABLEDATATYPE 92
   
CreateMonitoredItemsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_MonitoredItemCreateResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_CreateMonitoredItemsResponse;
   
   #define UA_TYPES_CREATEMONITOREDITEMSRESPONSE 93
   
DeleteReferencesItem
^^^^^^^^^^^^^^^^^^^^
A request to delete a node from the server address space.

.. code-block:: c

   typedef struct {
       UA_NodeId sourceNodeId;
       UA_NodeId referenceTypeId;
       UA_Boolean isForward;
       UA_ExpandedNodeId targetNodeId;
       UA_Boolean deleteBidirectional;
   } UA_DeleteReferencesItem;
   
   #define UA_TYPES_DELETEREFERENCESITEM 94
   
WriteValue
^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_UInt32 attributeId;
       UA_String indexRange;
       UA_DataValue value;
   } UA_WriteValue;
   
   #define UA_TYPES_WRITEVALUE 95
   
DataTypeAttributes
^^^^^^^^^^^^^^^^^^
The attributes for a data type node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean isAbstract;
   } UA_DataTypeAttributes;
   
   #define UA_TYPES_DATATYPEATTRIBUTES 96
   
AddReferencesResponse
^^^^^^^^^^^^^^^^^^^^^
Adds one or more references to the server address space.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_AddReferencesResponse;
   
   #define UA_TYPES_ADDREFERENCESRESPONSE 97
   
DeadbandType
^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_DEADBANDTYPE_NONE = 0,
       UA_DEADBANDTYPE_ABSOLUTE = 1,
       UA_DEADBANDTYPE_PERCENT = 2,
       __UA_DEADBANDTYPE_FORCE32BIT = 0x7fffffff
   } UA_DeadbandType;
   UA_STATIC_ASSERT(sizeof(UA_DeadbandType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_DEADBANDTYPE 98
   
DataChangeTrigger
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_DATACHANGETRIGGER_STATUS = 0,
       UA_DATACHANGETRIGGER_STATUSVALUE = 1,
       UA_DATACHANGETRIGGER_STATUSVALUETIMESTAMP = 2,
       __UA_DATACHANGETRIGGER_FORCE32BIT = 0x7fffffff
   } UA_DataChangeTrigger;
   UA_STATIC_ASSERT(sizeof(UA_DataChangeTrigger) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_DATACHANGETRIGGER 99
   
BuildInfo
^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String productUri;
       UA_String manufacturerName;
       UA_String productName;
       UA_String softwareVersion;
       UA_String buildNumber;
       UA_DateTime buildDate;
   } UA_BuildInfo;
   
   #define UA_TYPES_BUILDINFO 100
   
SubscriptionDiagnosticsDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId sessionId;
       UA_UInt32 subscriptionId;
       UA_Byte priority;
       UA_Double publishingInterval;
       UA_UInt32 maxKeepAliveCount;
       UA_UInt32 maxLifetimeCount;
       UA_UInt32 maxNotificationsPerPublish;
       UA_Boolean publishingEnabled;
       UA_UInt32 modifyCount;
       UA_UInt32 enableCount;
       UA_UInt32 disableCount;
       UA_UInt32 republishRequestCount;
       UA_UInt32 republishMessageRequestCount;
       UA_UInt32 republishMessageCount;
       UA_UInt32 transferRequestCount;
       UA_UInt32 transferredToAltClientCount;
       UA_UInt32 transferredToSameClientCount;
       UA_UInt32 publishRequestCount;
       UA_UInt32 dataChangeNotificationsCount;
       UA_UInt32 eventNotificationsCount;
       UA_UInt32 notificationsCount;
       UA_UInt32 latePublishRequestCount;
       UA_UInt32 currentKeepAliveCount;
       UA_UInt32 currentLifetimeCount;
       UA_UInt32 unacknowledgedMessageCount;
       UA_UInt32 discardedMessageCount;
       UA_UInt32 monitoredItemCount;
       UA_UInt32 disabledMonitoredItemCount;
       UA_UInt32 monitoringQueueOverflowCount;
       UA_UInt32 nextSequenceNumber;
       UA_UInt32 eventQueueOverFlowCount;
   } UA_SubscriptionDiagnosticsDataType;
   
   #define UA_TYPES_SUBSCRIPTIONDIAGNOSTICSDATATYPE 101
   
FilterOperand
^^^^^^^^^^^^^

.. code-block:: c

   typedef void * UA_FilterOperand;
   
   #define UA_TYPES_FILTEROPERAND 102
   
MonitoringParameters
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       UA_Double samplingInterval;
       UA_ExtensionObject filter;
       UA_UInt32 queueSize;
       UA_Boolean discardOldest;
   } UA_MonitoringParameters;
   
   #define UA_TYPES_MONITORINGPARAMETERS 103
   
DeleteNodesItem
^^^^^^^^^^^^^^^
A request to delete a node to the server address space.

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_Boolean deleteTargetReferences;
   } UA_DeleteNodesItem;
   
   #define UA_TYPES_DELETENODESITEM 104
   
QueryDataSet
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ExpandedNodeId nodeId;
       UA_ExpandedNodeId typeDefinitionNode;
       size_t valuesSize;
       UA_Variant *values;
   } UA_QueryDataSet;
   
   #define UA_TYPES_QUERYDATASET 105
   
ReadValueId
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_UInt32 attributeId;
       UA_String indexRange;
       UA_QualifiedName dataEncoding;
   } UA_ReadValueId;
   
   #define UA_TYPES_READVALUEID 106
   
CallRequest
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t methodsToCallSize;
       UA_CallMethodRequest *methodsToCall;
   } UA_CallRequest;
   
   #define UA_TYPES_CALLREQUEST 107
   
RelativePath
^^^^^^^^^^^^
A relative path constructed from reference types and browse names.

.. code-block:: c

   typedef struct {
       size_t elementsSize;
       UA_RelativePathElement *elements;
   } UA_RelativePath;
   
   #define UA_TYPES_RELATIVEPATH 108
   
DeleteNodesRequest
^^^^^^^^^^^^^^^^^^
Delete one or more nodes from the server address space.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToDeleteSize;
       UA_DeleteNodesItem *nodesToDelete;
   } UA_DeleteNodesRequest;
   
   #define UA_TYPES_DELETENODESREQUEST 109
   
MonitoredItemModifyRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 monitoredItemId;
       UA_MonitoringParameters requestedParameters;
   } UA_MonitoredItemModifyRequest;
   
   #define UA_TYPES_MONITOREDITEMMODIFYREQUEST 110
   
UserTokenType
^^^^^^^^^^^^^
The possible user token types.

.. code-block:: c

   typedef enum {
       UA_USERTOKENTYPE_ANONYMOUS = 0,
       UA_USERTOKENTYPE_USERNAME = 1,
       UA_USERTOKENTYPE_CERTIFICATE = 2,
       UA_USERTOKENTYPE_ISSUEDTOKEN = 3,
       __UA_USERTOKENTYPE_FORCE32BIT = 0x7fffffff
   } UA_UserTokenType;
   UA_STATIC_ASSERT(sizeof(UA_UserTokenType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_USERTOKENTYPE 111
   
AggregateConfiguration
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Boolean useServerCapabilitiesDefaults;
       UA_Boolean treatUncertainAsBad;
       UA_Byte percentDataBad;
       UA_Byte percentDataGood;
       UA_Boolean useSlopedExtrapolation;
   } UA_AggregateConfiguration;
   
   #define UA_TYPES_AGGREGATECONFIGURATION 112
   
LocaleId
^^^^^^^^
An identifier for a user locale.

.. code-block:: c

   typedef UA_String UA_LocaleId;
   
   #define UA_TYPES_LOCALEID 113
   
UnregisterNodesResponse
^^^^^^^^^^^^^^^^^^^^^^^
Unregisters one or more previously registered nodes.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_UnregisterNodesResponse;
   
   #define UA_TYPES_UNREGISTERNODESRESPONSE 114
   
ContentFilterResult
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementResultsSize;
       UA_ContentFilterElementResult *elementResults;
       size_t elementDiagnosticInfosSize;
       UA_DiagnosticInfo *elementDiagnosticInfos;
   } UA_ContentFilterResult;
   
   #define UA_TYPES_CONTENTFILTERRESULT 115
   
SimpleTypeDescription
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId dataTypeId;
       UA_QualifiedName name;
       UA_NodeId baseDataType;
       UA_Byte builtInType;
   } UA_SimpleTypeDescription;
   
   #define UA_TYPES_SIMPLETYPEDESCRIPTION 116
   
UserTokenPolicy
^^^^^^^^^^^^^^^
Describes a user token that can be used with a server.

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_UserTokenType tokenType;
       UA_String issuedTokenType;
       UA_String issuerEndpointUrl;
       UA_String securityPolicyUri;
   } UA_UserTokenPolicy;
   
   #define UA_TYPES_USERTOKENPOLICY 117
   
DeleteMonitoredItemsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       size_t monitoredItemIdsSize;
       UA_UInt32 *monitoredItemIds;
   } UA_DeleteMonitoredItemsRequest;
   
   #define UA_TYPES_DELETEMONITOREDITEMSREQUEST 118
   
SetMonitoringModeRequest
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_MonitoringMode monitoringMode;
       size_t monitoredItemIdsSize;
       UA_UInt32 *monitoredItemIds;
   } UA_SetMonitoringModeRequest;
   
   #define UA_TYPES_SETMONITORINGMODEREQUEST 119
   
Duration
^^^^^^^^
A period of time measured in milliseconds.

.. code-block:: c

   typedef UA_Double UA_Duration;
   
   #define UA_TYPES_DURATION 120
   
ReferenceTypeAttributes
^^^^^^^^^^^^^^^^^^^^^^^
The attributes for a reference type node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean isAbstract;
       UA_Boolean symmetric;
       UA_LocalizedText inverseName;
   } UA_ReferenceTypeAttributes;
   
   #define UA_TYPES_REFERENCETYPEATTRIBUTES 121
   
SessionSecurityDiagnosticsDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId sessionId;
       UA_String clientUserIdOfSession;
       size_t clientUserIdHistorySize;
       UA_String *clientUserIdHistory;
       UA_String authenticationMechanism;
       UA_String encoding;
       UA_String transportProtocol;
       UA_MessageSecurityMode securityMode;
       UA_String securityPolicyUri;
       UA_ByteString clientCertificate;
   } UA_SessionSecurityDiagnosticsDataType;
   
   #define UA_TYPES_SESSIONSECURITYDIAGNOSTICSDATATYPE 122
   
DataSetFieldFlags
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_DATASETFIELDFLAGS_PROMOTEDFIELD = 1,
       __UA_DATASETFIELDFLAGS_FORCE32BIT = 0x7fffffff
   } UA_DataSetFieldFlags;
   UA_STATIC_ASSERT(sizeof(UA_DataSetFieldFlags) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_DATASETFIELDFLAGS 123
   
GetEndpointsRequest
^^^^^^^^^^^^^^^^^^^
Gets the endpoints used by the server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_String endpointUrl;
       size_t localeIdsSize;
       UA_String *localeIds;
       size_t profileUrisSize;
       UA_String *profileUris;
   } UA_GetEndpointsRequest;
   
   #define UA_TYPES_GETENDPOINTSREQUEST 124
   
CloseSecureChannelResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^
Closes a secure channel.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_CloseSecureChannelResponse;
   
   #define UA_TYPES_CLOSESECURECHANNELRESPONSE 125
   
ViewDescription
^^^^^^^^^^^^^^^
The view to browse.

.. code-block:: c

   typedef struct {
       UA_NodeId viewId;
       UA_DateTime timestamp;
       UA_UInt32 viewVersion;
   } UA_ViewDescription;
   
   #define UA_TYPES_VIEWDESCRIPTION 126
   
SetPublishingModeResponse
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_SetPublishingModeResponse;
   
   #define UA_TYPES_SETPUBLISHINGMODERESPONSE 127
   
StatusChangeNotification
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode status;
       UA_DiagnosticInfo diagnosticInfo;
   } UA_StatusChangeNotification;
   
   #define UA_TYPES_STATUSCHANGENOTIFICATION 128
   
StructureField
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String name;
       UA_LocalizedText description;
       UA_NodeId dataType;
       UA_Int32 valueRank;
       size_t arrayDimensionsSize;
       UA_UInt32 *arrayDimensions;
       UA_UInt32 maxStringLength;
       UA_Boolean isOptional;
   } UA_StructureField;
   
   #define UA_TYPES_STRUCTUREFIELD 129
   
NodeAttributesMask
^^^^^^^^^^^^^^^^^^
The bits used to specify default attributes for a new node.

.. code-block:: c

   typedef enum {
       UA_NODEATTRIBUTESMASK_NONE = 0,
       UA_NODEATTRIBUTESMASK_ACCESSLEVEL = 1,
       UA_NODEATTRIBUTESMASK_ARRAYDIMENSIONS = 2,
       UA_NODEATTRIBUTESMASK_BROWSENAME = 4,
       UA_NODEATTRIBUTESMASK_CONTAINSNOLOOPS = 8,
       UA_NODEATTRIBUTESMASK_DATATYPE = 16,
       UA_NODEATTRIBUTESMASK_DESCRIPTION = 32,
       UA_NODEATTRIBUTESMASK_DISPLAYNAME = 64,
       UA_NODEATTRIBUTESMASK_EVENTNOTIFIER = 128,
       UA_NODEATTRIBUTESMASK_EXECUTABLE = 256,
       UA_NODEATTRIBUTESMASK_HISTORIZING = 512,
       UA_NODEATTRIBUTESMASK_INVERSENAME = 1024,
       UA_NODEATTRIBUTESMASK_ISABSTRACT = 2048,
       UA_NODEATTRIBUTESMASK_MINIMUMSAMPLINGINTERVAL = 4096,
       UA_NODEATTRIBUTESMASK_NODECLASS = 8192,
       UA_NODEATTRIBUTESMASK_NODEID = 16384,
       UA_NODEATTRIBUTESMASK_SYMMETRIC = 32768,
       UA_NODEATTRIBUTESMASK_USERACCESSLEVEL = 65536,
       UA_NODEATTRIBUTESMASK_USEREXECUTABLE = 131072,
       UA_NODEATTRIBUTESMASK_USERWRITEMASK = 262144,
       UA_NODEATTRIBUTESMASK_VALUERANK = 524288,
       UA_NODEATTRIBUTESMASK_WRITEMASK = 1048576,
       UA_NODEATTRIBUTESMASK_VALUE = 2097152,
       UA_NODEATTRIBUTESMASK_DATATYPEDEFINITION = 4194304,
       UA_NODEATTRIBUTESMASK_ROLEPERMISSIONS = 8388608,
       UA_NODEATTRIBUTESMASK_ACCESSRESTRICTIONS = 16777216,
       UA_NODEATTRIBUTESMASK_ALL = 33554431,
       UA_NODEATTRIBUTESMASK_BASENODE = 26501220,
       UA_NODEATTRIBUTESMASK_OBJECT = 26501348,
       UA_NODEATTRIBUTESMASK_OBJECTTYPE = 26503268,
       UA_NODEATTRIBUTESMASK_VARIABLE = 26571383,
       UA_NODEATTRIBUTESMASK_VARIABLETYPE = 28600438,
       UA_NODEATTRIBUTESMASK_METHOD = 26632548,
       UA_NODEATTRIBUTESMASK_REFERENCETYPE = 26537060,
       UA_NODEATTRIBUTESMASK_VIEW = 26501356,
       __UA_NODEATTRIBUTESMASK_FORCE32BIT = 0x7fffffff
   } UA_NodeAttributesMask;
   UA_STATIC_ASSERT(sizeof(UA_NodeAttributesMask) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_NODEATTRIBUTESMASK 130
   
EventFilterResult
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t selectClauseResultsSize;
       UA_StatusCode *selectClauseResults;
       size_t selectClauseDiagnosticInfosSize;
       UA_DiagnosticInfo *selectClauseDiagnosticInfos;
       UA_ContentFilterResult whereClauseResult;
   } UA_EventFilterResult;
   
   #define UA_TYPES_EVENTFILTERRESULT 131
   
KeyValuePair
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_QualifiedName key;
       UA_Variant value;
   } UA_KeyValuePair;
   
   #define UA_TYPES_KEYVALUEPAIR 132
   
MonitoredItemCreateRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ReadValueId itemToMonitor;
       UA_MonitoringMode monitoringMode;
       UA_MonitoringParameters requestedParameters;
   } UA_MonitoredItemCreateRequest;
   
   #define UA_TYPES_MONITOREDITEMCREATEREQUEST 133
   
QueryNextRequest
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean releaseContinuationPoint;
       UA_ByteString continuationPoint;
   } UA_QueryNextRequest;
   
   #define UA_TYPES_QUERYNEXTREQUEST 134
   
DataChangeNotification
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t monitoredItemsSize;
       UA_MonitoredItemNotification *monitoredItems;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DataChangeNotification;
   
   #define UA_TYPES_DATACHANGENOTIFICATION 135
   
Argument
^^^^^^^^
An argument for a method.

.. code-block:: c

   typedef struct {
       UA_String name;
       UA_NodeId dataType;
       UA_Int32 valueRank;
       size_t arrayDimensionsSize;
       UA_UInt32 *arrayDimensions;
       UA_LocalizedText description;
   } UA_Argument;
   
   #define UA_TYPES_ARGUMENT 136
   
ChannelSecurityToken
^^^^^^^^^^^^^^^^^^^^
The token that identifies a set of keys for an active secure channel.

.. code-block:: c

   typedef struct {
       UA_UInt32 channelId;
       UA_UInt32 tokenId;
       UA_DateTime createdAt;
       UA_UInt32 revisedLifetime;
   } UA_ChannelSecurityToken;
   
   #define UA_TYPES_CHANNELSECURITYTOKEN 137
   
ServerState
^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_SERVERSTATE_RUNNING = 0,
       UA_SERVERSTATE_FAILED = 1,
       UA_SERVERSTATE_NOCONFIGURATION = 2,
       UA_SERVERSTATE_SUSPENDED = 3,
       UA_SERVERSTATE_SHUTDOWN = 4,
       UA_SERVERSTATE_TEST = 5,
       UA_SERVERSTATE_COMMUNICATIONFAULT = 6,
       UA_SERVERSTATE_UNKNOWN = 7,
       __UA_SERVERSTATE_FORCE32BIT = 0x7fffffff
   } UA_ServerState;
   UA_STATIC_ASSERT(sizeof(UA_ServerState) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_SERVERSTATE 138
   
EventNotificationList
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventsSize;
       UA_EventFieldList *events;
   } UA_EventNotificationList;
   
   #define UA_TYPES_EVENTNOTIFICATIONLIST 139
   
AnonymousIdentityToken
^^^^^^^^^^^^^^^^^^^^^^
A token representing an anonymous user.

.. code-block:: c

   typedef struct {
       UA_String policyId;
   } UA_AnonymousIdentityToken;
   
   #define UA_TYPES_ANONYMOUSIDENTITYTOKEN 140
   
FilterOperator
^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_FILTEROPERATOR_EQUALS = 0,
       UA_FILTEROPERATOR_ISNULL = 1,
       UA_FILTEROPERATOR_GREATERTHAN = 2,
       UA_FILTEROPERATOR_LESSTHAN = 3,
       UA_FILTEROPERATOR_GREATERTHANOREQUAL = 4,
       UA_FILTEROPERATOR_LESSTHANOREQUAL = 5,
       UA_FILTEROPERATOR_LIKE = 6,
       UA_FILTEROPERATOR_NOT = 7,
       UA_FILTEROPERATOR_BETWEEN = 8,
       UA_FILTEROPERATOR_INLIST = 9,
       UA_FILTEROPERATOR_AND = 10,
       UA_FILTEROPERATOR_OR = 11,
       UA_FILTEROPERATOR_CAST = 12,
       UA_FILTEROPERATOR_INVIEW = 13,
       UA_FILTEROPERATOR_OFTYPE = 14,
       UA_FILTEROPERATOR_RELATEDTO = 15,
       UA_FILTEROPERATOR_BITWISEAND = 16,
       UA_FILTEROPERATOR_BITWISEOR = 17,
       __UA_FILTEROPERATOR_FORCE32BIT = 0x7fffffff
   } UA_FilterOperator;
   UA_STATIC_ASSERT(sizeof(UA_FilterOperator) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_FILTEROPERATOR 141
   
AggregateFilter
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime startTime;
       UA_NodeId aggregateType;
       UA_Double processingInterval;
       UA_AggregateConfiguration aggregateConfiguration;
   } UA_AggregateFilter;
   
   #define UA_TYPES_AGGREGATEFILTER 142
   
RepublishResponse
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_NotificationMessage notificationMessage;
   } UA_RepublishResponse;
   
   #define UA_TYPES_REPUBLISHRESPONSE 143
   
DeleteSubscriptionsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DeleteSubscriptionsResponse;
   
   #define UA_TYPES_DELETESUBSCRIPTIONSRESPONSE 144
   
RegisterNodesRequest
^^^^^^^^^^^^^^^^^^^^
Registers one or more nodes for repeated use within a session.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToRegisterSize;
       UA_NodeId *nodesToRegister;
   } UA_RegisterNodesRequest;
   
   #define UA_TYPES_REGISTERNODESREQUEST 145
   
StructureDefinition
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId defaultEncodingId;
       UA_NodeId baseDataType;
       UA_StructureType structureType;
       size_t fieldsSize;
       UA_StructureField *fields;
   } UA_StructureDefinition;
   
   #define UA_TYPES_STRUCTUREDEFINITION 146
   
MethodAttributes
^^^^^^^^^^^^^^^^
The attributes for a method node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean executable;
       UA_Boolean userExecutable;
   } UA_MethodAttributes;
   
   #define UA_TYPES_METHODATTRIBUTES 147
   
ModelChangeStructureDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId affected;
       UA_NodeId affectedType;
       UA_Byte verb;
   } UA_ModelChangeStructureDataType;
   
   #define UA_TYPES_MODELCHANGESTRUCTUREDATATYPE 148
   
UserNameIdentityToken
^^^^^^^^^^^^^^^^^^^^^
A token representing a user identified by a user name and password.

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_String userName;
       UA_ByteString password;
       UA_String encryptionAlgorithm;
   } UA_UserNameIdentityToken;
   
   #define UA_TYPES_USERNAMEIDENTITYTOKEN 149
   
IdType
^^^^^^
The type of identifier used in a node id.

.. code-block:: c

   typedef enum {
       UA_IDTYPE_NUMERIC = 0,
       UA_IDTYPE_STRING = 1,
       UA_IDTYPE_GUID = 2,
       UA_IDTYPE_OPAQUE = 3,
       __UA_IDTYPE_FORCE32BIT = 0x7fffffff
   } UA_IdType;
   UA_STATIC_ASSERT(sizeof(UA_IdType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_IDTYPE 150
   
TimeZoneDataType
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int16 offset;
       UA_Boolean daylightSavingInOffset;
   } UA_TimeZoneDataType;
   
   #define UA_TYPES_TIMEZONEDATATYPE 151
   
UnregisterNodesRequest
^^^^^^^^^^^^^^^^^^^^^^
Unregisters one or more previously registered nodes.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToUnregisterSize;
       UA_NodeId *nodesToUnregister;
   } UA_UnregisterNodesRequest;
   
   #define UA_TYPES_UNREGISTERNODESREQUEST 152
   
DataSetOrderingType
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_DATASETORDERINGTYPE_UNDEFINED = 0,
       UA_DATASETORDERINGTYPE_ASCENDINGWRITERID = 1,
       UA_DATASETORDERINGTYPE_ASCENDINGWRITERIDSINGLE = 2,
       __UA_DATASETORDERINGTYPE_FORCE32BIT = 0x7fffffff
   } UA_DataSetOrderingType;
   UA_STATIC_ASSERT(sizeof(UA_DataSetOrderingType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_DATASETORDERINGTYPE 153
   
OpenSecureChannelResponse
^^^^^^^^^^^^^^^^^^^^^^^^^
Creates a secure channel with a server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 serverProtocolVersion;
       UA_ChannelSecurityToken securityToken;
       UA_ByteString serverNonce;
   } UA_OpenSecureChannelResponse;
   
   #define UA_TYPES_OPENSECURECHANNELRESPONSE 154
   
SetTriggeringResponse
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t addResultsSize;
       UA_StatusCode *addResults;
       size_t addDiagnosticInfosSize;
       UA_DiagnosticInfo *addDiagnosticInfos;
       size_t removeResultsSize;
       UA_StatusCode *removeResults;
       size_t removeDiagnosticInfosSize;
       UA_DiagnosticInfo *removeDiagnosticInfos;
   } UA_SetTriggeringResponse;
   
   #define UA_TYPES_SETTRIGGERINGRESPONSE 155
   
SimpleAttributeOperand
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId typeDefinitionId;
       size_t browsePathSize;
       UA_QualifiedName *browsePath;
       UA_UInt32 attributeId;
       UA_String indexRange;
   } UA_SimpleAttributeOperand;
   
   #define UA_TYPES_SIMPLEATTRIBUTEOPERAND 156
   
UadpDataSetWriterMessageDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UadpDataSetMessageContentMask dataSetMessageContentMask;
       UA_UInt16 configuredSize;
       UA_UInt16 networkMessageNumber;
       UA_UInt16 dataSetOffset;
   } UA_UadpDataSetWriterMessageDataType;
   
   #define UA_TYPES_UADPDATASETWRITERMESSAGEDATATYPE 157
   
RepublishRequest
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_UInt32 retransmitSequenceNumber;
   } UA_RepublishRequest;
   
   #define UA_TYPES_REPUBLISHREQUEST 158
   
RedundantServerDataType
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String serverId;
       UA_Byte serviceLevel;
       UA_ServerState serverState;
   } UA_RedundantServerDataType;
   
   #define UA_TYPES_REDUNDANTSERVERDATATYPE 159
   
RegisterNodesResponse
^^^^^^^^^^^^^^^^^^^^^
Registers one or more nodes for repeated use within a session.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t registeredNodeIdsSize;
       UA_NodeId *registeredNodeIds;
   } UA_RegisterNodesResponse;
   
   #define UA_TYPES_REGISTERNODESRESPONSE 160
   
ModifyMonitoredItemsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_MonitoredItemModifyResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_ModifyMonitoredItemsResponse;
   
   #define UA_TYPES_MODIFYMONITOREDITEMSRESPONSE 161
   
DeleteSubscriptionsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
   } UA_DeleteSubscriptionsRequest;
   
   #define UA_TYPES_DELETESUBSCRIPTIONSREQUEST 162
   
RedundancySupport
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_REDUNDANCYSUPPORT_NONE = 0,
       UA_REDUNDANCYSUPPORT_COLD = 1,
       UA_REDUNDANCYSUPPORT_WARM = 2,
       UA_REDUNDANCYSUPPORT_HOT = 3,
       UA_REDUNDANCYSUPPORT_TRANSPARENT = 4,
       UA_REDUNDANCYSUPPORT_HOTANDMIRRORED = 5,
       __UA_REDUNDANCYSUPPORT_FORCE32BIT = 0x7fffffff
   } UA_RedundancySupport;
   UA_STATIC_ASSERT(sizeof(UA_RedundancySupport) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_REDUNDANCYSUPPORT 163
   
BrowsePath
^^^^^^^^^^
A request to translate a path into a node id.

.. code-block:: c

   typedef struct {
       UA_NodeId startingNode;
       UA_RelativePath relativePath;
   } UA_BrowsePath;
   
   #define UA_TYPES_BROWSEPATH 164
   
ObjectAttributes
^^^^^^^^^^^^^^^^
The attributes for an object node.

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Byte eventNotifier;
   } UA_ObjectAttributes;
   
   #define UA_TYPES_OBJECTATTRIBUTES 165
   
PublishRequest
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionAcknowledgementsSize;
       UA_SubscriptionAcknowledgement *subscriptionAcknowledgements;
   } UA_PublishRequest;
   
   #define UA_TYPES_PUBLISHREQUEST 166
   
FindServersRequest
^^^^^^^^^^^^^^^^^^
Finds the servers known to the discovery server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_String endpointUrl;
       size_t localeIdsSize;
       UA_String *localeIds;
       size_t serverUrisSize;
       UA_String *serverUris;
   } UA_FindServersRequest;
   
   #define UA_TYPES_FINDSERVERSREQUEST 167
   
FindServersOnNetworkResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_DateTime lastCounterResetTime;
       size_t serversSize;
       UA_ServerOnNetwork *servers;
   } UA_FindServersOnNetworkResponse;
   
   #define UA_TYPES_FINDSERVERSONNETWORKRESPONSE 168
   
FieldMetaData
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String name;
       UA_LocalizedText description;
       UA_DataSetFieldFlags fieldFlags;
       UA_Byte builtInType;
       UA_NodeId dataType;
       UA_Int32 valueRank;
       size_t arrayDimensionsSize;
       UA_UInt32 *arrayDimensions;
       UA_UInt32 maxStringLength;
       UA_Guid dataSetFieldId;
       size_t propertiesSize;
       UA_KeyValuePair *properties;
   } UA_FieldMetaData;
   
   #define UA_TYPES_FIELDMETADATA 169
   
ReferenceDescription
^^^^^^^^^^^^^^^^^^^^
The description of a reference.

.. code-block:: c

   typedef struct {
       UA_NodeId referenceTypeId;
       UA_Boolean isForward;
       UA_ExpandedNodeId nodeId;
       UA_QualifiedName browseName;
       UA_LocalizedText displayName;
       UA_NodeClass nodeClass;
       UA_ExpandedNodeId typeDefinition;
   } UA_ReferenceDescription;
   
   #define UA_TYPES_REFERENCEDESCRIPTION 170
   
CreateSubscriptionRequest
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Double requestedPublishingInterval;
       UA_UInt32 requestedLifetimeCount;
       UA_UInt32 requestedMaxKeepAliveCount;
       UA_UInt32 maxNotificationsPerPublish;
       UA_Boolean publishingEnabled;
       UA_Byte priority;
   } UA_CreateSubscriptionRequest;
   
   #define UA_TYPES_CREATESUBSCRIPTIONREQUEST 171
   
FindServersOnNetworkRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 startingRecordId;
       UA_UInt32 maxRecordsToReturn;
       size_t serverCapabilityFilterSize;
       UA_String *serverCapabilityFilter;
   } UA_FindServersOnNetworkRequest;
   
   #define UA_TYPES_FINDSERVERSONNETWORKREQUEST 172
   
CallResponse
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_CallMethodResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_CallResponse;
   
   #define UA_TYPES_CALLRESPONSE 173
   
DeleteNodesResponse
^^^^^^^^^^^^^^^^^^^
Delete one or more nodes from the server address space.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DeleteNodesResponse;
   
   #define UA_TYPES_DELETENODESRESPONSE 174
   
ModifyMonitoredItemsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_TimestampsToReturn timestampsToReturn;
       size_t itemsToModifySize;
       UA_MonitoredItemModifyRequest *itemsToModify;
   } UA_ModifyMonitoredItemsRequest;
   
   #define UA_TYPES_MODIFYMONITOREDITEMSREQUEST 175
   
ServiceFault
^^^^^^^^^^^^
The response returned by all services when there is a service level error.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_ServiceFault;
   
   #define UA_TYPES_SERVICEFAULT 176
   
PublishResponse
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 subscriptionId;
       size_t availableSequenceNumbersSize;
       UA_UInt32 *availableSequenceNumbers;
       UA_Boolean moreNotifications;
       UA_NotificationMessage notificationMessage;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_PublishResponse;
   
   #define UA_TYPES_PUBLISHRESPONSE 177
   
NetworkGroupDataType
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String serverUri;
       size_t networkPathsSize;
       UA_EndpointUrlListDataType *networkPaths;
   } UA_NetworkGroupDataType;
   
   #define UA_TYPES_NETWORKGROUPDATATYPE 178
   
CreateMonitoredItemsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_TimestampsToReturn timestampsToReturn;
       size_t itemsToCreateSize;
       UA_MonitoredItemCreateRequest *itemsToCreate;
   } UA_CreateMonitoredItemsRequest;
   
   #define UA_TYPES_CREATEMONITOREDITEMSREQUEST 179
   
OpenSecureChannelRequest
^^^^^^^^^^^^^^^^^^^^^^^^
Creates a secure channel with a server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 clientProtocolVersion;
       UA_SecurityTokenRequestType requestType;
       UA_MessageSecurityMode securityMode;
       UA_ByteString clientNonce;
       UA_UInt32 requestedLifetime;
   } UA_OpenSecureChannelRequest;
   
   #define UA_TYPES_OPENSECURECHANNELREQUEST 180
   
QueryFirstResponse
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t queryDataSetsSize;
       UA_QueryDataSet *queryDataSets;
       UA_ByteString continuationPoint;
       size_t parsingResultsSize;
       UA_ParsingResult *parsingResults;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
       UA_ContentFilterResult filterResult;
   } UA_QueryFirstResponse;
   
   #define UA_TYPES_QUERYFIRSTRESPONSE 181
   
CloseSessionRequest
^^^^^^^^^^^^^^^^^^^
Closes a session with the server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean deleteSubscriptions;
   } UA_CloseSessionRequest;
   
   #define UA_TYPES_CLOSESESSIONREQUEST 182
   
SetTriggeringRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_UInt32 triggeringItemId;
       size_t linksToAddSize;
       UA_UInt32 *linksToAdd;
       size_t linksToRemoveSize;
       UA_UInt32 *linksToRemove;
   } UA_SetTriggeringRequest;
   
   #define UA_TYPES_SETTRIGGERINGREQUEST 183
   
EnumDescription
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId dataTypeId;
       UA_QualifiedName name;
       UA_EnumDefinition enumDefinition;
       UA_Byte builtInType;
   } UA_EnumDescription;
   
   #define UA_TYPES_ENUMDESCRIPTION 184
   
BrowseResult
^^^^^^^^^^^^
The result of a browse operation.

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_ByteString continuationPoint;
       size_t referencesSize;
       UA_ReferenceDescription *references;
   } UA_BrowseResult;
   
   #define UA_TYPES_BROWSERESULT 185
   
QueryDataDescription
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RelativePath relativePath;
       UA_UInt32 attributeId;
       UA_String indexRange;
   } UA_QueryDataDescription;
   
   #define UA_TYPES_QUERYDATADESCRIPTION 186
   
AddReferencesRequest
^^^^^^^^^^^^^^^^^^^^
Adds one or more references to the server address space.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t referencesToAddSize;
       UA_AddReferencesItem *referencesToAdd;
   } UA_AddReferencesRequest;
   
   #define UA_TYPES_ADDREFERENCESREQUEST 187
   
AddNodesItem
^^^^^^^^^^^^
A request to add a node to the server address space.

.. code-block:: c

   typedef struct {
       UA_ExpandedNodeId parentNodeId;
       UA_NodeId referenceTypeId;
       UA_ExpandedNodeId requestedNewNodeId;
       UA_QualifiedName browseName;
       UA_NodeClass nodeClass;
       UA_ExtensionObject nodeAttributes;
       UA_ExpandedNodeId typeDefinition;
   } UA_AddNodesItem;
   
   #define UA_TYPES_ADDNODESITEM 188
   
ServerStatusDataType
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime startTime;
       UA_DateTime currentTime;
       UA_ServerState state;
       UA_BuildInfo buildInfo;
       UA_UInt32 secondsTillShutdown;
       UA_LocalizedText shutdownReason;
   } UA_ServerStatusDataType;
   
   #define UA_TYPES_SERVERSTATUSDATATYPE 189
   
BrowseNextResponse
^^^^^^^^^^^^^^^^^^
Continues one or more browse operations.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_BrowseResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_BrowseNextResponse;
   
   #define UA_TYPES_BROWSENEXTRESPONSE 190
   
RegisteredServer
^^^^^^^^^^^^^^^^
The information required to register a server with a discovery server.

.. code-block:: c

   typedef struct {
       UA_String serverUri;
       UA_String productUri;
       size_t serverNamesSize;
       UA_LocalizedText *serverNames;
       UA_ApplicationType serverType;
       UA_String gatewayServerUri;
       size_t discoveryUrlsSize;
       UA_String *discoveryUrls;
       UA_String semaphoreFilePath;
       UA_Boolean isOnline;
   } UA_RegisteredServer;
   
   #define UA_TYPES_REGISTEREDSERVER 191
   
ApplicationDescription
^^^^^^^^^^^^^^^^^^^^^^
Describes an application and how to find it.

.. code-block:: c

   typedef struct {
       UA_String applicationUri;
       UA_String productUri;
       UA_LocalizedText applicationName;
       UA_ApplicationType applicationType;
       UA_String gatewayServerUri;
       UA_String discoveryProfileUri;
       size_t discoveryUrlsSize;
       UA_String *discoveryUrls;
   } UA_ApplicationDescription;
   
   #define UA_TYPES_APPLICATIONDESCRIPTION 192
   
StructureDescription
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId dataTypeId;
       UA_QualifiedName name;
       UA_StructureDefinition structureDefinition;
   } UA_StructureDescription;
   
   #define UA_TYPES_STRUCTUREDESCRIPTION 193
   
ReadRequest
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Double maxAge;
       UA_TimestampsToReturn timestampsToReturn;
       size_t nodesToReadSize;
       UA_ReadValueId *nodesToRead;
   } UA_ReadRequest;
   
   #define UA_TYPES_READREQUEST 194
   
ActivateSessionRequest
^^^^^^^^^^^^^^^^^^^^^^
Activates a session with the server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_SignatureData clientSignature;
       size_t clientSoftwareCertificatesSize;
       UA_SignedSoftwareCertificate *clientSoftwareCertificates;
       size_t localeIdsSize;
       UA_String *localeIds;
       UA_ExtensionObject userIdentityToken;
       UA_SignatureData userTokenSignature;
   } UA_ActivateSessionRequest;
   
   #define UA_TYPES_ACTIVATESESSIONREQUEST 195
   
QueryNextResponse
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t queryDataSetsSize;
       UA_QueryDataSet *queryDataSets;
       UA_ByteString revisedContinuationPoint;
   } UA_QueryNextResponse;
   
   #define UA_TYPES_QUERYNEXTRESPONSE 196
   
BrowsePathResult
^^^^^^^^^^^^^^^^
The result of a translate opearation.

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t targetsSize;
       UA_BrowsePathTarget *targets;
   } UA_BrowsePathResult;
   
   #define UA_TYPES_BROWSEPATHRESULT 197
   
AddNodesRequest
^^^^^^^^^^^^^^^
Adds one or more nodes to the server address space.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToAddSize;
       UA_AddNodesItem *nodesToAdd;
   } UA_AddNodesRequest;
   
   #define UA_TYPES_ADDNODESREQUEST 198
   
BrowseRequest
^^^^^^^^^^^^^
Browse the references for one or more nodes from the server address space.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_ViewDescription view;
       UA_UInt32 requestedMaxReferencesPerNode;
       size_t nodesToBrowseSize;
       UA_BrowseDescription *nodesToBrowse;
   } UA_BrowseRequest;
   
   #define UA_TYPES_BROWSEREQUEST 199
   
WriteRequest
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToWriteSize;
       UA_WriteValue *nodesToWrite;
   } UA_WriteRequest;
   
   #define UA_TYPES_WRITEREQUEST 200
   
AddNodesResponse
^^^^^^^^^^^^^^^^
Adds one or more nodes to the server address space.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_AddNodesResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_AddNodesResponse;
   
   #define UA_TYPES_ADDNODESRESPONSE 201
   
RegisterServer2Request
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_RegisteredServer server;
       size_t discoveryConfigurationSize;
       UA_ExtensionObject *discoveryConfiguration;
   } UA_RegisterServer2Request;
   
   #define UA_TYPES_REGISTERSERVER2REQUEST 202
   
AttributeOperand
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_String alias;
       UA_RelativePath browsePath;
       UA_UInt32 attributeId;
       UA_String indexRange;
   } UA_AttributeOperand;
   
   #define UA_TYPES_ATTRIBUTEOPERAND 203
   
DataChangeFilter
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DataChangeTrigger trigger;
       UA_UInt32 deadbandType;
       UA_Double deadbandValue;
   } UA_DataChangeFilter;
   
   #define UA_TYPES_DATACHANGEFILTER 204
   
EndpointDescription
^^^^^^^^^^^^^^^^^^^
The description of a endpoint that can be used to access a server.

.. code-block:: c

   typedef struct {
       UA_String endpointUrl;
       UA_ApplicationDescription server;
       UA_ByteString serverCertificate;
       UA_MessageSecurityMode securityMode;
       UA_String securityPolicyUri;
       size_t userIdentityTokensSize;
       UA_UserTokenPolicy *userIdentityTokens;
       UA_String transportProfileUri;
       UA_Byte securityLevel;
   } UA_EndpointDescription;
   
   #define UA_TYPES_ENDPOINTDESCRIPTION 205
   
DeleteReferencesRequest
^^^^^^^^^^^^^^^^^^^^^^^
Delete one or more references from the server address space.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t referencesToDeleteSize;
       UA_DeleteReferencesItem *referencesToDelete;
   } UA_DeleteReferencesRequest;
   
   #define UA_TYPES_DELETEREFERENCESREQUEST 206
   
TranslateBrowsePathsToNodeIdsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Translates one or more paths in the server address space.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t browsePathsSize;
       UA_BrowsePath *browsePaths;
   } UA_TranslateBrowsePathsToNodeIdsRequest;
   
   #define UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSREQUEST 207
   
FindServersResponse
^^^^^^^^^^^^^^^^^^^
Finds the servers known to the discovery server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t serversSize;
       UA_ApplicationDescription *servers;
   } UA_FindServersResponse;
   
   #define UA_TYPES_FINDSERVERSRESPONSE 208
   
CreateSessionRequest
^^^^^^^^^^^^^^^^^^^^
Creates a new session with the server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_ApplicationDescription clientDescription;
       UA_String serverUri;
       UA_String endpointUrl;
       UA_String sessionName;
       UA_ByteString clientNonce;
       UA_ByteString clientCertificate;
       UA_Double requestedSessionTimeout;
       UA_UInt32 maxResponseMessageSize;
   } UA_CreateSessionRequest;
   
   #define UA_TYPES_CREATESESSIONREQUEST 209
   
NodeTypeDescription
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ExpandedNodeId typeDefinitionNode;
       UA_Boolean includeSubTypes;
       size_t dataToReturnSize;
       UA_QueryDataDescription *dataToReturn;
   } UA_NodeTypeDescription;
   
   #define UA_TYPES_NODETYPEDESCRIPTION 210
   
ContentFilterElement
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_FilterOperator filterOperator;
       size_t filterOperandsSize;
       UA_ExtensionObject *filterOperands;
   } UA_ContentFilterElement;
   
   #define UA_TYPES_CONTENTFILTERELEMENT 211
   
SessionDiagnosticsDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId sessionId;
       UA_String sessionName;
       UA_ApplicationDescription clientDescription;
       UA_String serverUri;
       UA_String endpointUrl;
       size_t localeIdsSize;
       UA_String *localeIds;
       UA_Double actualSessionTimeout;
       UA_UInt32 maxResponseMessageSize;
       UA_DateTime clientConnectionTime;
       UA_DateTime clientLastContactTime;
       UA_UInt32 currentSubscriptionsCount;
       UA_UInt32 currentMonitoredItemsCount;
       UA_UInt32 currentPublishRequestsInQueue;
       UA_ServiceCounterDataType totalRequestCount;
       UA_UInt32 unauthorizedRequestCount;
       UA_ServiceCounterDataType readCount;
       UA_ServiceCounterDataType historyReadCount;
       UA_ServiceCounterDataType writeCount;
       UA_ServiceCounterDataType historyUpdateCount;
       UA_ServiceCounterDataType callCount;
       UA_ServiceCounterDataType createMonitoredItemsCount;
       UA_ServiceCounterDataType modifyMonitoredItemsCount;
       UA_ServiceCounterDataType setMonitoringModeCount;
       UA_ServiceCounterDataType setTriggeringCount;
       UA_ServiceCounterDataType deleteMonitoredItemsCount;
       UA_ServiceCounterDataType createSubscriptionCount;
       UA_ServiceCounterDataType modifySubscriptionCount;
       UA_ServiceCounterDataType setPublishingModeCount;
       UA_ServiceCounterDataType publishCount;
       UA_ServiceCounterDataType republishCount;
       UA_ServiceCounterDataType transferSubscriptionsCount;
       UA_ServiceCounterDataType deleteSubscriptionsCount;
       UA_ServiceCounterDataType addNodesCount;
       UA_ServiceCounterDataType addReferencesCount;
       UA_ServiceCounterDataType deleteNodesCount;
       UA_ServiceCounterDataType deleteReferencesCount;
       UA_ServiceCounterDataType browseCount;
       UA_ServiceCounterDataType browseNextCount;
       UA_ServiceCounterDataType translateBrowsePathsToNodeIdsCount;
       UA_ServiceCounterDataType queryFirstCount;
       UA_ServiceCounterDataType queryNextCount;
       UA_ServiceCounterDataType registerNodesCount;
       UA_ServiceCounterDataType unregisterNodesCount;
   } UA_SessionDiagnosticsDataType;
   
   #define UA_TYPES_SESSIONDIAGNOSTICSDATATYPE 212
   
UadpWriterGroupMessageDataType
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 groupVersion;
       UA_DataSetOrderingType dataSetOrdering;
       UA_UadpNetworkMessageContentMask networkMessageContentMask;
       UA_Double samplingOffset;
       size_t publishingOffsetSize;
       UA_Double *publishingOffset;
   } UA_UadpWriterGroupMessageDataType;
   
   #define UA_TYPES_UADPWRITERGROUPMESSAGEDATATYPE 213
   
RegisterServerRequest
^^^^^^^^^^^^^^^^^^^^^
Registers a server with the discovery server.

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_RegisteredServer server;
   } UA_RegisterServerRequest;
   
   #define UA_TYPES_REGISTERSERVERREQUEST 214
   
TranslateBrowsePathsToNodeIdsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
Translates one or more paths in the server address space.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_BrowsePathResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_TranslateBrowsePathsToNodeIdsResponse;
   
   #define UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSRESPONSE 215
   
BrowseResponse
^^^^^^^^^^^^^^
Browse the references for one or more nodes from the server address space.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_BrowseResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_BrowseResponse;
   
   #define UA_TYPES_BROWSERESPONSE 216
   
CreateSessionResponse
^^^^^^^^^^^^^^^^^^^^^
Creates a new session with the server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_NodeId sessionId;
       UA_NodeId authenticationToken;
       UA_Double revisedSessionTimeout;
       UA_ByteString serverNonce;
       UA_ByteString serverCertificate;
       size_t serverEndpointsSize;
       UA_EndpointDescription *serverEndpoints;
       size_t serverSoftwareCertificatesSize;
       UA_SignedSoftwareCertificate *serverSoftwareCertificates;
       UA_SignatureData serverSignature;
       UA_UInt32 maxRequestMessageSize;
   } UA_CreateSessionResponse;
   
   #define UA_TYPES_CREATESESSIONRESPONSE 217
   
DataSetMetaDataType
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t namespacesSize;
       UA_String *namespaces;
       size_t structureDataTypesSize;
       UA_StructureDescription *structureDataTypes;
       size_t enumDataTypesSize;
       UA_EnumDescription *enumDataTypes;
       size_t simpleDataTypesSize;
       UA_SimpleTypeDescription *simpleDataTypes;
       UA_String name;
       UA_LocalizedText description;
       size_t fieldsSize;
       UA_FieldMetaData *fields;
       UA_Guid dataSetClassId;
       UA_ConfigurationVersionDataType configurationVersion;
   } UA_DataSetMetaDataType;
   
   #define UA_TYPES_DATASETMETADATATYPE 218
   
ContentFilter
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementsSize;
       UA_ContentFilterElement *elements;
   } UA_ContentFilter;
   
   #define UA_TYPES_CONTENTFILTER 219
   
GetEndpointsResponse
^^^^^^^^^^^^^^^^^^^^
Gets the endpoints used by the server.

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t endpointsSize;
       UA_EndpointDescription *endpoints;
   } UA_GetEndpointsResponse;
   
   #define UA_TYPES_GETENDPOINTSRESPONSE 220
   
EventFilter
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t selectClausesSize;
       UA_SimpleAttributeOperand *selectClauses;
       UA_ContentFilter whereClause;
   } UA_EventFilter;
   
   #define UA_TYPES_EVENTFILTER 221
   
QueryFirstRequest
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_ViewDescription view;
       size_t nodeTypesSize;
       UA_NodeTypeDescription *nodeTypes;
       UA_ContentFilter filter;
       UA_UInt32 maxDataSetsToReturn;
       UA_UInt32 maxReferencesToReturn;
   } UA_QueryFirstRequest;
   
   #define UA_TYPES_QUERYFIRSTREQUEST 222

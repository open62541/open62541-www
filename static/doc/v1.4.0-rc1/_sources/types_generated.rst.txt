Every type is assigned an index in an array containing the type descriptions.
These descriptions are used during type handling (copying, deletion,
binary encoding, ...).

.. code-block:: c

   #define UA_TYPES_COUNT 227
   extern UA_DataType UA_TYPES[UA_TYPES_COUNT];
   
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
   
NamingRuleType
^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_NAMINGRULETYPE_MANDATORY = 1,
       UA_NAMINGRULETYPE_OPTIONAL = 2,
       UA_NAMINGRULETYPE_CONSTRAINT = 3,
       __UA_NAMINGRULETYPE_FORCE32BIT = 0x7fffffff
   } UA_NamingRuleType;
   UA_STATIC_ASSERT(sizeof(UA_NamingRuleType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_NAMINGRULETYPE 25
   
KeyValuePair
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_QualifiedName key;
       UA_Variant value;
   } UA_KeyValuePair;
   
   #define UA_TYPES_KEYVALUEPAIR 26
   
NodeClass
^^^^^^^^^

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
   
   #define UA_TYPES_NODECLASS 27
   
StructureType
^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_STRUCTURETYPE_STRUCTURE = 0,
       UA_STRUCTURETYPE_STRUCTUREWITHOPTIONALFIELDS = 1,
       UA_STRUCTURETYPE_UNION = 2,
       UA_STRUCTURETYPE_STRUCTUREWITHSUBTYPEDVALUES = 3,
       UA_STRUCTURETYPE_UNIONWITHSUBTYPEDVALUES = 4,
       __UA_STRUCTURETYPE_FORCE32BIT = 0x7fffffff
   } UA_StructureType;
   UA_STATIC_ASSERT(sizeof(UA_StructureType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_STRUCTURETYPE 28
   
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
   
   #define UA_TYPES_STRUCTUREFIELD 29
   
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
   
   #define UA_TYPES_STRUCTUREDEFINITION 30
   
Argument
^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String name;
       UA_NodeId dataType;
       UA_Int32 valueRank;
       size_t arrayDimensionsSize;
       UA_UInt32 *arrayDimensions;
       UA_LocalizedText description;
   } UA_Argument;
   
   #define UA_TYPES_ARGUMENT 31
   
EnumValueType
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int64 value;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
   } UA_EnumValueType;
   
   #define UA_TYPES_ENUMVALUETYPE 32
   
EnumField
^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int64 value;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_String name;
   } UA_EnumField;
   
   #define UA_TYPES_ENUMFIELD 33
   
Duration
^^^^^^^^

.. code-block:: c

   typedef UA_Double UA_Duration;
   
   #define UA_TYPES_DURATION 34
   
UtcTime
^^^^^^^

.. code-block:: c

   typedef UA_DateTime UA_UtcTime;
   
   #define UA_TYPES_UTCTIME 35
   
LocaleId
^^^^^^^^

.. code-block:: c

   typedef UA_String UA_LocaleId;
   
   #define UA_TYPES_LOCALEID 36
   
TimeZoneDataType
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int16 offset;
       UA_Boolean daylightSavingInOffset;
   } UA_TimeZoneDataType;
   
   #define UA_TYPES_TIMEZONEDATATYPE 37
   
ApplicationType
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_APPLICATIONTYPE_SERVER = 0,
       UA_APPLICATIONTYPE_CLIENT = 1,
       UA_APPLICATIONTYPE_CLIENTANDSERVER = 2,
       UA_APPLICATIONTYPE_DISCOVERYSERVER = 3,
       __UA_APPLICATIONTYPE_FORCE32BIT = 0x7fffffff
   } UA_ApplicationType;
   UA_STATIC_ASSERT(sizeof(UA_ApplicationType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_APPLICATIONTYPE 38
   
ApplicationDescription
^^^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_APPLICATIONDESCRIPTION 39
   
RequestHeader
^^^^^^^^^^^^^

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
   
   #define UA_TYPES_REQUESTHEADER 40
   
ResponseHeader
^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_RESPONSEHEADER 41
   
ServiceFault
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_ServiceFault;
   
   #define UA_TYPES_SERVICEFAULT 42
   
FindServersRequest
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_String endpointUrl;
       size_t localeIdsSize;
       UA_String *localeIds;
       size_t serverUrisSize;
       UA_String *serverUris;
   } UA_FindServersRequest;
   
   #define UA_TYPES_FINDSERVERSREQUEST 43
   
FindServersResponse
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t serversSize;
       UA_ApplicationDescription *servers;
   } UA_FindServersResponse;
   
   #define UA_TYPES_FINDSERVERSRESPONSE 44
   
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
   
   #define UA_TYPES_SERVERONNETWORK 45
   
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
   
   #define UA_TYPES_FINDSERVERSONNETWORKREQUEST 46
   
FindServersOnNetworkResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_DateTime lastCounterResetTime;
       size_t serversSize;
       UA_ServerOnNetwork *servers;
   } UA_FindServersOnNetworkResponse;
   
   #define UA_TYPES_FINDSERVERSONNETWORKRESPONSE 47
   
MessageSecurityMode
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_MESSAGESECURITYMODE_INVALID = 0,
       UA_MESSAGESECURITYMODE_NONE = 1,
       UA_MESSAGESECURITYMODE_SIGN = 2,
       UA_MESSAGESECURITYMODE_SIGNANDENCRYPT = 3,
       __UA_MESSAGESECURITYMODE_FORCE32BIT = 0x7fffffff
   } UA_MessageSecurityMode;
   UA_STATIC_ASSERT(sizeof(UA_MessageSecurityMode) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_MESSAGESECURITYMODE 48
   
UserTokenType
^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_USERTOKENTYPE_ANONYMOUS = 0,
       UA_USERTOKENTYPE_USERNAME = 1,
       UA_USERTOKENTYPE_CERTIFICATE = 2,
       UA_USERTOKENTYPE_ISSUEDTOKEN = 3,
       __UA_USERTOKENTYPE_FORCE32BIT = 0x7fffffff
   } UA_UserTokenType;
   UA_STATIC_ASSERT(sizeof(UA_UserTokenType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_USERTOKENTYPE 49
   
UserTokenPolicy
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_UserTokenType tokenType;
       UA_String issuedTokenType;
       UA_String issuerEndpointUrl;
       UA_String securityPolicyUri;
   } UA_UserTokenPolicy;
   
   #define UA_TYPES_USERTOKENPOLICY 50
   
EndpointDescription
^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_ENDPOINTDESCRIPTION 51
   
GetEndpointsRequest
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_String endpointUrl;
       size_t localeIdsSize;
       UA_String *localeIds;
       size_t profileUrisSize;
       UA_String *profileUris;
   } UA_GetEndpointsRequest;
   
   #define UA_TYPES_GETENDPOINTSREQUEST 52
   
GetEndpointsResponse
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t endpointsSize;
       UA_EndpointDescription *endpoints;
   } UA_GetEndpointsResponse;
   
   #define UA_TYPES_GETENDPOINTSRESPONSE 53
   
RegisteredServer
^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_REGISTEREDSERVER 54
   
RegisterServerRequest
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_RegisteredServer server;
   } UA_RegisterServerRequest;
   
   #define UA_TYPES_REGISTERSERVERREQUEST 55
   
RegisterServerResponse
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_RegisterServerResponse;
   
   #define UA_TYPES_REGISTERSERVERRESPONSE 56
   
MdnsDiscoveryConfiguration
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String mdnsServerName;
       size_t serverCapabilitiesSize;
       UA_String *serverCapabilities;
   } UA_MdnsDiscoveryConfiguration;
   
   #define UA_TYPES_MDNSDISCOVERYCONFIGURATION 57
   
RegisterServer2Request
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_RegisteredServer server;
       size_t discoveryConfigurationSize;
       UA_ExtensionObject *discoveryConfiguration;
   } UA_RegisterServer2Request;
   
   #define UA_TYPES_REGISTERSERVER2REQUEST 58
   
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
   
   #define UA_TYPES_REGISTERSERVER2RESPONSE 59
   
SecurityTokenRequestType
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_SECURITYTOKENREQUESTTYPE_ISSUE = 0,
       UA_SECURITYTOKENREQUESTTYPE_RENEW = 1,
       __UA_SECURITYTOKENREQUESTTYPE_FORCE32BIT = 0x7fffffff
   } UA_SecurityTokenRequestType;
   UA_STATIC_ASSERT(sizeof(UA_SecurityTokenRequestType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_SECURITYTOKENREQUESTTYPE 60
   
ChannelSecurityToken
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 channelId;
       UA_UInt32 tokenId;
       UA_DateTime createdAt;
       UA_UInt32 revisedLifetime;
   } UA_ChannelSecurityToken;
   
   #define UA_TYPES_CHANNELSECURITYTOKEN 61
   
OpenSecureChannelRequest
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 clientProtocolVersion;
       UA_SecurityTokenRequestType requestType;
       UA_MessageSecurityMode securityMode;
       UA_ByteString clientNonce;
       UA_UInt32 requestedLifetime;
   } UA_OpenSecureChannelRequest;
   
   #define UA_TYPES_OPENSECURECHANNELREQUEST 62
   
OpenSecureChannelResponse
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 serverProtocolVersion;
       UA_ChannelSecurityToken securityToken;
       UA_ByteString serverNonce;
   } UA_OpenSecureChannelResponse;
   
   #define UA_TYPES_OPENSECURECHANNELRESPONSE 63
   
CloseSecureChannelRequest
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
   } UA_CloseSecureChannelRequest;
   
   #define UA_TYPES_CLOSESECURECHANNELREQUEST 64
   
CloseSecureChannelResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_CloseSecureChannelResponse;
   
   #define UA_TYPES_CLOSESECURECHANNELRESPONSE 65
   
SignedSoftwareCertificate
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ByteString certificateData;
       UA_ByteString signature;
   } UA_SignedSoftwareCertificate;
   
   #define UA_TYPES_SIGNEDSOFTWARECERTIFICATE 66
   
SignatureData
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String algorithm;
       UA_ByteString signature;
   } UA_SignatureData;
   
   #define UA_TYPES_SIGNATUREDATA 67
   
CreateSessionRequest
^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_CREATESESSIONREQUEST 68
   
CreateSessionResponse
^^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_CREATESESSIONRESPONSE 69
   
UserIdentityToken
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
   } UA_UserIdentityToken;
   
   #define UA_TYPES_USERIDENTITYTOKEN 70
   
AnonymousIdentityToken
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
   } UA_AnonymousIdentityToken;
   
   #define UA_TYPES_ANONYMOUSIDENTITYTOKEN 71
   
UserNameIdentityToken
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_String userName;
       UA_ByteString password;
       UA_String encryptionAlgorithm;
   } UA_UserNameIdentityToken;
   
   #define UA_TYPES_USERNAMEIDENTITYTOKEN 72
   
X509IdentityToken
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_ByteString certificateData;
   } UA_X509IdentityToken;
   
   #define UA_TYPES_X509IDENTITYTOKEN 73
   
IssuedIdentityToken
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_ByteString tokenData;
       UA_String encryptionAlgorithm;
   } UA_IssuedIdentityToken;
   
   #define UA_TYPES_ISSUEDIDENTITYTOKEN 74
   
ActivateSessionRequest
^^^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_ACTIVATESESSIONREQUEST 75
   
ActivateSessionResponse
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_ByteString serverNonce;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_ActivateSessionResponse;
   
   #define UA_TYPES_ACTIVATESESSIONRESPONSE 76
   
CloseSessionRequest
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean deleteSubscriptions;
   } UA_CloseSessionRequest;
   
   #define UA_TYPES_CLOSESESSIONREQUEST 77
   
CloseSessionResponse
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_CloseSessionResponse;
   
   #define UA_TYPES_CLOSESESSIONRESPONSE 78
   
CancelRequest
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 requestHandle;
   } UA_CancelRequest;
   
   #define UA_TYPES_CANCELREQUEST 79
   
CancelResponse
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 cancelCount;
   } UA_CancelResponse;
   
   #define UA_TYPES_CANCELRESPONSE 80
   
NodeAttributesMask
^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_NODEATTRIBUTESMASK 81
   
NodeAttributes
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
   } UA_NodeAttributes;
   
   #define UA_TYPES_NODEATTRIBUTES 82
   
ObjectAttributes
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Byte eventNotifier;
   } UA_ObjectAttributes;
   
   #define UA_TYPES_OBJECTATTRIBUTES 83
   
VariableAttributes
^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_VARIABLEATTRIBUTES 84
   
MethodAttributes
^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_METHODATTRIBUTES 85
   
ObjectTypeAttributes
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean isAbstract;
   } UA_ObjectTypeAttributes;
   
   #define UA_TYPES_OBJECTTYPEATTRIBUTES 86
   
VariableTypeAttributes
^^^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_VARIABLETYPEATTRIBUTES 87
   
ReferenceTypeAttributes
^^^^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_REFERENCETYPEATTRIBUTES 88
   
DataTypeAttributes
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedAttributes;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_UInt32 writeMask;
       UA_UInt32 userWriteMask;
       UA_Boolean isAbstract;
   } UA_DataTypeAttributes;
   
   #define UA_TYPES_DATATYPEATTRIBUTES 89
   
ViewAttributes
^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_VIEWATTRIBUTES 90
   
AddNodesItem
^^^^^^^^^^^^

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
   
   #define UA_TYPES_ADDNODESITEM 91
   
AddNodesResult
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_NodeId addedNodeId;
   } UA_AddNodesResult;
   
   #define UA_TYPES_ADDNODESRESULT 92
   
AddNodesRequest
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToAddSize;
       UA_AddNodesItem *nodesToAdd;
   } UA_AddNodesRequest;
   
   #define UA_TYPES_ADDNODESREQUEST 93
   
AddNodesResponse
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_AddNodesResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_AddNodesResponse;
   
   #define UA_TYPES_ADDNODESRESPONSE 94
   
AddReferencesItem
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId sourceNodeId;
       UA_NodeId referenceTypeId;
       UA_Boolean isForward;
       UA_String targetServerUri;
       UA_ExpandedNodeId targetNodeId;
       UA_NodeClass targetNodeClass;
   } UA_AddReferencesItem;
   
   #define UA_TYPES_ADDREFERENCESITEM 95
   
AddReferencesRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t referencesToAddSize;
       UA_AddReferencesItem *referencesToAdd;
   } UA_AddReferencesRequest;
   
   #define UA_TYPES_ADDREFERENCESREQUEST 96
   
AddReferencesResponse
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_AddReferencesResponse;
   
   #define UA_TYPES_ADDREFERENCESRESPONSE 97
   
DeleteNodesItem
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_Boolean deleteTargetReferences;
   } UA_DeleteNodesItem;
   
   #define UA_TYPES_DELETENODESITEM 98
   
DeleteNodesRequest
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToDeleteSize;
       UA_DeleteNodesItem *nodesToDelete;
   } UA_DeleteNodesRequest;
   
   #define UA_TYPES_DELETENODESREQUEST 99
   
DeleteNodesResponse
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DeleteNodesResponse;
   
   #define UA_TYPES_DELETENODESRESPONSE 100
   
DeleteReferencesItem
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId sourceNodeId;
       UA_NodeId referenceTypeId;
       UA_Boolean isForward;
       UA_ExpandedNodeId targetNodeId;
       UA_Boolean deleteBidirectional;
   } UA_DeleteReferencesItem;
   
   #define UA_TYPES_DELETEREFERENCESITEM 101
   
DeleteReferencesRequest
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t referencesToDeleteSize;
       UA_DeleteReferencesItem *referencesToDelete;
   } UA_DeleteReferencesRequest;
   
   #define UA_TYPES_DELETEREFERENCESREQUEST 102
   
DeleteReferencesResponse
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_StatusCode *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DeleteReferencesResponse;
   
   #define UA_TYPES_DELETEREFERENCESRESPONSE 103
   
BrowseDirection
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_BROWSEDIRECTION_FORWARD = 0,
       UA_BROWSEDIRECTION_INVERSE = 1,
       UA_BROWSEDIRECTION_BOTH = 2,
       UA_BROWSEDIRECTION_INVALID = 3,
       __UA_BROWSEDIRECTION_FORCE32BIT = 0x7fffffff
   } UA_BrowseDirection;
   UA_STATIC_ASSERT(sizeof(UA_BrowseDirection) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_BROWSEDIRECTION 104
   
ViewDescription
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId viewId;
       UA_DateTime timestamp;
       UA_UInt32 viewVersion;
   } UA_ViewDescription;
   
   #define UA_TYPES_VIEWDESCRIPTION 105
   
BrowseDescription
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_BrowseDirection browseDirection;
       UA_NodeId referenceTypeId;
       UA_Boolean includeSubtypes;
       UA_UInt32 nodeClassMask;
       UA_UInt32 resultMask;
   } UA_BrowseDescription;
   
   #define UA_TYPES_BROWSEDESCRIPTION 106
   
BrowseResultMask
^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_BROWSERESULTMASK 107
   
ReferenceDescription
^^^^^^^^^^^^^^^^^^^^

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
   
   #define UA_TYPES_REFERENCEDESCRIPTION 108
   
BrowseResult
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_ByteString continuationPoint;
       size_t referencesSize;
       UA_ReferenceDescription *references;
   } UA_BrowseResult;
   
   #define UA_TYPES_BROWSERESULT 109
   
BrowseRequest
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_ViewDescription view;
       UA_UInt32 requestedMaxReferencesPerNode;
       size_t nodesToBrowseSize;
       UA_BrowseDescription *nodesToBrowse;
   } UA_BrowseRequest;
   
   #define UA_TYPES_BROWSEREQUEST 110
   
BrowseResponse
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_BrowseResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_BrowseResponse;
   
   #define UA_TYPES_BROWSERESPONSE 111
   
BrowseNextRequest
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean releaseContinuationPoints;
       size_t continuationPointsSize;
       UA_ByteString *continuationPoints;
   } UA_BrowseNextRequest;
   
   #define UA_TYPES_BROWSENEXTREQUEST 112
   
BrowseNextResponse
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_BrowseResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_BrowseNextResponse;
   
   #define UA_TYPES_BROWSENEXTRESPONSE 113
   
RelativePathElement
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId referenceTypeId;
       UA_Boolean isInverse;
       UA_Boolean includeSubtypes;
       UA_QualifiedName targetName;
   } UA_RelativePathElement;
   
   #define UA_TYPES_RELATIVEPATHELEMENT 114
   
RelativePath
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementsSize;
       UA_RelativePathElement *elements;
   } UA_RelativePath;
   
   #define UA_TYPES_RELATIVEPATH 115
   
BrowsePath
^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId startingNode;
       UA_RelativePath relativePath;
   } UA_BrowsePath;
   
   #define UA_TYPES_BROWSEPATH 116
   
BrowsePathTarget
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ExpandedNodeId targetId;
       UA_UInt32 remainingPathIndex;
   } UA_BrowsePathTarget;
   
   #define UA_TYPES_BROWSEPATHTARGET 117
   
BrowsePathResult
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t targetsSize;
       UA_BrowsePathTarget *targets;
   } UA_BrowsePathResult;
   
   #define UA_TYPES_BROWSEPATHRESULT 118
   
TranslateBrowsePathsToNodeIdsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t browsePathsSize;
       UA_BrowsePath *browsePaths;
   } UA_TranslateBrowsePathsToNodeIdsRequest;
   
   #define UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSREQUEST 119
   
TranslateBrowsePathsToNodeIdsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_BrowsePathResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_TranslateBrowsePathsToNodeIdsResponse;
   
   #define UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSRESPONSE 120
   
RegisterNodesRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToRegisterSize;
       UA_NodeId *nodesToRegister;
   } UA_RegisterNodesRequest;
   
   #define UA_TYPES_REGISTERNODESREQUEST 121
   
RegisterNodesResponse
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t registeredNodeIdsSize;
       UA_NodeId *registeredNodeIds;
   } UA_RegisterNodesResponse;
   
   #define UA_TYPES_REGISTERNODESRESPONSE 122
   
UnregisterNodesRequest
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToUnregisterSize;
       UA_NodeId *nodesToUnregister;
   } UA_UnregisterNodesRequest;
   
   #define UA_TYPES_UNREGISTERNODESREQUEST 123
   
UnregisterNodesResponse
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_UnregisterNodesResponse;
   
   #define UA_TYPES_UNREGISTERNODESRESPONSE 124
   
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
   
   #define UA_TYPES_FILTEROPERATOR 125
   
ContentFilterElement
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_FilterOperator filterOperator;
       size_t filterOperandsSize;
       UA_ExtensionObject *filterOperands;
   } UA_ContentFilterElement;
   
   #define UA_TYPES_CONTENTFILTERELEMENT 126
   
ContentFilter
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementsSize;
       UA_ContentFilterElement *elements;
   } UA_ContentFilter;
   
   #define UA_TYPES_CONTENTFILTER 127
   
ElementOperand
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 index;
   } UA_ElementOperand;
   
   #define UA_TYPES_ELEMENTOPERAND 128
   
LiteralOperand
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Variant value;
   } UA_LiteralOperand;
   
   #define UA_TYPES_LITERALOPERAND 129
   
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
   
   #define UA_TYPES_ATTRIBUTEOPERAND 130
   
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
   
   #define UA_TYPES_SIMPLEATTRIBUTEOPERAND 131
   
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
   
   #define UA_TYPES_CONTENTFILTERELEMENTRESULT 132
   
ContentFilterResult
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementResultsSize;
       UA_ContentFilterElementResult *elementResults;
       size_t elementDiagnosticInfosSize;
       UA_DiagnosticInfo *elementDiagnosticInfos;
   } UA_ContentFilterResult;
   
   #define UA_TYPES_CONTENTFILTERRESULT 133
   
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
   
   #define UA_TYPES_TIMESTAMPSTORETURN 134
   
ReadValueId
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_UInt32 attributeId;
       UA_String indexRange;
       UA_QualifiedName dataEncoding;
   } UA_ReadValueId;
   
   #define UA_TYPES_READVALUEID 135
   
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
   
   #define UA_TYPES_READREQUEST 136
   
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
   
   #define UA_TYPES_READRESPONSE 137
   
HistoryReadValueId
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_String indexRange;
       UA_QualifiedName dataEncoding;
       UA_ByteString continuationPoint;
   } UA_HistoryReadValueId;
   
   #define UA_TYPES_HISTORYREADVALUEID 138
   
HistoryReadResult
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_ByteString continuationPoint;
       UA_ExtensionObject historyData;
   } UA_HistoryReadResult;
   
   #define UA_TYPES_HISTORYREADRESULT 139
   
ReadRawModifiedDetails
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Boolean isReadModified;
       UA_DateTime startTime;
       UA_DateTime endTime;
       UA_UInt32 numValuesPerNode;
       UA_Boolean returnBounds;
   } UA_ReadRawModifiedDetails;
   
   #define UA_TYPES_READRAWMODIFIEDDETAILS 140
   
ReadAtTimeDetails
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t reqTimesSize;
       UA_DateTime *reqTimes;
       UA_Boolean useSimpleBounds;
   } UA_ReadAtTimeDetails;
   
   #define UA_TYPES_READATTIMEDETAILS 141
   
HistoryData
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t dataValuesSize;
       UA_DataValue *dataValues;
   } UA_HistoryData;
   
   #define UA_TYPES_HISTORYDATA 142
   
HistoryReadRequest
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_ExtensionObject historyReadDetails;
       UA_TimestampsToReturn timestampsToReturn;
       UA_Boolean releaseContinuationPoints;
       size_t nodesToReadSize;
       UA_HistoryReadValueId *nodesToRead;
   } UA_HistoryReadRequest;
   
   #define UA_TYPES_HISTORYREADREQUEST 143
   
HistoryReadResponse
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_HistoryReadResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_HistoryReadResponse;
   
   #define UA_TYPES_HISTORYREADRESPONSE 144
   
WriteValue
^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_UInt32 attributeId;
       UA_String indexRange;
       UA_DataValue value;
   } UA_WriteValue;
   
   #define UA_TYPES_WRITEVALUE 145
   
WriteRequest
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToWriteSize;
       UA_WriteValue *nodesToWrite;
   } UA_WriteRequest;
   
   #define UA_TYPES_WRITEREQUEST 146
   
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
   
   #define UA_TYPES_WRITERESPONSE 147
   
HistoryUpdateType
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_HISTORYUPDATETYPE_INSERT = 1,
       UA_HISTORYUPDATETYPE_REPLACE = 2,
       UA_HISTORYUPDATETYPE_UPDATE = 3,
       UA_HISTORYUPDATETYPE_DELETE = 4,
       __UA_HISTORYUPDATETYPE_FORCE32BIT = 0x7fffffff
   } UA_HistoryUpdateType;
   UA_STATIC_ASSERT(sizeof(UA_HistoryUpdateType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_HISTORYUPDATETYPE 148
   
PerformUpdateType
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_PERFORMUPDATETYPE_INSERT = 1,
       UA_PERFORMUPDATETYPE_REPLACE = 2,
       UA_PERFORMUPDATETYPE_UPDATE = 3,
       UA_PERFORMUPDATETYPE_REMOVE = 4,
       __UA_PERFORMUPDATETYPE_FORCE32BIT = 0x7fffffff
   } UA_PerformUpdateType;
   UA_STATIC_ASSERT(sizeof(UA_PerformUpdateType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_PERFORMUPDATETYPE 149
   
UpdateDataDetails
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_PerformUpdateType performInsertReplace;
       size_t updateValuesSize;
       UA_DataValue *updateValues;
   } UA_UpdateDataDetails;
   
   #define UA_TYPES_UPDATEDATADETAILS 150
   
DeleteRawModifiedDetails
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_Boolean isDeleteModified;
       UA_DateTime startTime;
       UA_DateTime endTime;
   } UA_DeleteRawModifiedDetails;
   
   #define UA_TYPES_DELETERAWMODIFIEDDETAILS 151
   
HistoryUpdateResult
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t operationResultsSize;
       UA_StatusCode *operationResults;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_HistoryUpdateResult;
   
   #define UA_TYPES_HISTORYUPDATERESULT 152
   
HistoryUpdateRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t historyUpdateDetailsSize;
       UA_ExtensionObject *historyUpdateDetails;
   } UA_HistoryUpdateRequest;
   
   #define UA_TYPES_HISTORYUPDATEREQUEST 153
   
HistoryUpdateResponse
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_HistoryUpdateResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_HistoryUpdateResponse;
   
   #define UA_TYPES_HISTORYUPDATERESPONSE 154
   
CallMethodRequest
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId objectId;
       UA_NodeId methodId;
       size_t inputArgumentsSize;
       UA_Variant *inputArguments;
   } UA_CallMethodRequest;
   
   #define UA_TYPES_CALLMETHODREQUEST 155
   
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
   
   #define UA_TYPES_CALLMETHODRESULT 156
   
CallRequest
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t methodsToCallSize;
       UA_CallMethodRequest *methodsToCall;
   } UA_CallRequest;
   
   #define UA_TYPES_CALLREQUEST 157
   
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
   
   #define UA_TYPES_CALLRESPONSE 158
   
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
   
   #define UA_TYPES_MONITORINGMODE 159
   
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
   
   #define UA_TYPES_DATACHANGETRIGGER 160
   
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
   
   #define UA_TYPES_DEADBANDTYPE 161
   
DataChangeFilter
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DataChangeTrigger trigger;
       UA_UInt32 deadbandType;
       UA_Double deadbandValue;
   } UA_DataChangeFilter;
   
   #define UA_TYPES_DATACHANGEFILTER 162
   
EventFilter
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t selectClausesSize;
       UA_SimpleAttributeOperand *selectClauses;
       UA_ContentFilter whereClause;
   } UA_EventFilter;
   
   #define UA_TYPES_EVENTFILTER 163
   
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
   
   #define UA_TYPES_AGGREGATECONFIGURATION 164
   
AggregateFilter
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime startTime;
       UA_NodeId aggregateType;
       UA_Double processingInterval;
       UA_AggregateConfiguration aggregateConfiguration;
   } UA_AggregateFilter;
   
   #define UA_TYPES_AGGREGATEFILTER 165
   
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
   
   #define UA_TYPES_EVENTFILTERRESULT 166
   
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
   
   #define UA_TYPES_MONITORINGPARAMETERS 167
   
MonitoredItemCreateRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ReadValueId itemToMonitor;
       UA_MonitoringMode monitoringMode;
       UA_MonitoringParameters requestedParameters;
   } UA_MonitoredItemCreateRequest;
   
   #define UA_TYPES_MONITOREDITEMCREATEREQUEST 168
   
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
   
   #define UA_TYPES_MONITOREDITEMCREATERESULT 169
   
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
   
   #define UA_TYPES_CREATEMONITOREDITEMSREQUEST 170
   
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
   
   #define UA_TYPES_CREATEMONITOREDITEMSRESPONSE 171
   
MonitoredItemModifyRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 monitoredItemId;
       UA_MonitoringParameters requestedParameters;
   } UA_MonitoredItemModifyRequest;
   
   #define UA_TYPES_MONITOREDITEMMODIFYREQUEST 172
   
MonitoredItemModifyResult
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_Double revisedSamplingInterval;
       UA_UInt32 revisedQueueSize;
       UA_ExtensionObject filterResult;
   } UA_MonitoredItemModifyResult;
   
   #define UA_TYPES_MONITOREDITEMMODIFYRESULT 173
   
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
   
   #define UA_TYPES_MODIFYMONITOREDITEMSREQUEST 174
   
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
   
   #define UA_TYPES_MODIFYMONITOREDITEMSRESPONSE 175
   
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
   
   #define UA_TYPES_SETMONITORINGMODEREQUEST 176
   
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
   
   #define UA_TYPES_SETMONITORINGMODERESPONSE 177
   
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
   
   #define UA_TYPES_SETTRIGGERINGREQUEST 178
   
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
   
   #define UA_TYPES_SETTRIGGERINGRESPONSE 179
   
DeleteMonitoredItemsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       size_t monitoredItemIdsSize;
       UA_UInt32 *monitoredItemIds;
   } UA_DeleteMonitoredItemsRequest;
   
   #define UA_TYPES_DELETEMONITOREDITEMSREQUEST 180
   
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
   
   #define UA_TYPES_DELETEMONITOREDITEMSRESPONSE 181
   
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
   
   #define UA_TYPES_CREATESUBSCRIPTIONREQUEST 182
   
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
   
   #define UA_TYPES_CREATESUBSCRIPTIONRESPONSE 183
   
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
   
   #define UA_TYPES_MODIFYSUBSCRIPTIONREQUEST 184
   
ModifySubscriptionResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_Double revisedPublishingInterval;
       UA_UInt32 revisedLifetimeCount;
       UA_UInt32 revisedMaxKeepAliveCount;
   } UA_ModifySubscriptionResponse;
   
   #define UA_TYPES_MODIFYSUBSCRIPTIONRESPONSE 185
   
SetPublishingModeRequest
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean publishingEnabled;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
   } UA_SetPublishingModeRequest;
   
   #define UA_TYPES_SETPUBLISHINGMODEREQUEST 186
   
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
   
   #define UA_TYPES_SETPUBLISHINGMODERESPONSE 187
   
NotificationMessage
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 sequenceNumber;
       UA_DateTime publishTime;
       size_t notificationDataSize;
       UA_ExtensionObject *notificationData;
   } UA_NotificationMessage;
   
   #define UA_TYPES_NOTIFICATIONMESSAGE 188
   
MonitoredItemNotification
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       UA_DataValue value;
   } UA_MonitoredItemNotification;
   
   #define UA_TYPES_MONITOREDITEMNOTIFICATION 189
   
EventFieldList
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       size_t eventFieldsSize;
       UA_Variant *eventFields;
   } UA_EventFieldList;
   
   #define UA_TYPES_EVENTFIELDLIST 190
   
HistoryEventFieldList
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventFieldsSize;
       UA_Variant *eventFields;
   } UA_HistoryEventFieldList;
   
   #define UA_TYPES_HISTORYEVENTFIELDLIST 191
   
StatusChangeNotification
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode status;
       UA_DiagnosticInfo diagnosticInfo;
   } UA_StatusChangeNotification;
   
   #define UA_TYPES_STATUSCHANGENOTIFICATION 192
   
SubscriptionAcknowledgement
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 subscriptionId;
       UA_UInt32 sequenceNumber;
   } UA_SubscriptionAcknowledgement;
   
   #define UA_TYPES_SUBSCRIPTIONACKNOWLEDGEMENT 193
   
PublishRequest
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionAcknowledgementsSize;
       UA_SubscriptionAcknowledgement *subscriptionAcknowledgements;
   } UA_PublishRequest;
   
   #define UA_TYPES_PUBLISHREQUEST 194
   
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
   
   #define UA_TYPES_PUBLISHRESPONSE 195
   
RepublishRequest
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_UInt32 retransmitSequenceNumber;
   } UA_RepublishRequest;
   
   #define UA_TYPES_REPUBLISHREQUEST 196
   
RepublishResponse
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_NotificationMessage notificationMessage;
   } UA_RepublishResponse;
   
   #define UA_TYPES_REPUBLISHRESPONSE 197
   
TransferResult
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t availableSequenceNumbersSize;
       UA_UInt32 *availableSequenceNumbers;
   } UA_TransferResult;
   
   #define UA_TYPES_TRANSFERRESULT 198
   
TransferSubscriptionsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
       UA_Boolean sendInitialValues;
   } UA_TransferSubscriptionsRequest;
   
   #define UA_TYPES_TRANSFERSUBSCRIPTIONSREQUEST 199
   
TransferSubscriptionsResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t resultsSize;
       UA_TransferResult *results;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_TransferSubscriptionsResponse;
   
   #define UA_TYPES_TRANSFERSUBSCRIPTIONSRESPONSE 200
   
DeleteSubscriptionsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
   } UA_DeleteSubscriptionsRequest;
   
   #define UA_TYPES_DELETESUBSCRIPTIONSREQUEST 201
   
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
   
   #define UA_TYPES_DELETESUBSCRIPTIONSRESPONSE 202
   
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
   
   #define UA_TYPES_BUILDINFO 203
   
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
   
   #define UA_TYPES_REDUNDANCYSUPPORT 204
   
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
   
   #define UA_TYPES_SERVERSTATE 205
   
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
   
   #define UA_TYPES_SERVERDIAGNOSTICSSUMMARYDATATYPE 206
   
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
   
   #define UA_TYPES_SERVERSTATUSDATATYPE 207
   
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
   
   #define UA_TYPES_SESSIONSECURITYDIAGNOSTICSDATATYPE 208
   
ServiceCounterDataType
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 totalCount;
       UA_UInt32 errorCount;
   } UA_ServiceCounterDataType;
   
   #define UA_TYPES_SERVICECOUNTERDATATYPE 209
   
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
   
   #define UA_TYPES_SUBSCRIPTIONDIAGNOSTICSDATATYPE 210
   
Range
^^^^^

.. code-block:: c

   typedef struct {
       UA_Double low;
       UA_Double high;
   } UA_Range;
   
   #define UA_TYPES_RANGE 211
   
EUInformation
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String namespaceUri;
       UA_Int32 unitId;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
   } UA_EUInformation;
   
   #define UA_TYPES_EUINFORMATION 212
   
AxisScaleEnumeration
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_AXISSCALEENUMERATION_LINEAR = 0,
       UA_AXISSCALEENUMERATION_LOG = 1,
       UA_AXISSCALEENUMERATION_LN = 2,
       __UA_AXISSCALEENUMERATION_FORCE32BIT = 0x7fffffff
   } UA_AxisScaleEnumeration;
   UA_STATIC_ASSERT(sizeof(UA_AxisScaleEnumeration) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_AXISSCALEENUMERATION 213
   
ComplexNumberType
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Float real;
       UA_Float imaginary;
   } UA_ComplexNumberType;
   
   #define UA_TYPES_COMPLEXNUMBERTYPE 214
   
DoubleComplexNumberType
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Double real;
       UA_Double imaginary;
   } UA_DoubleComplexNumberType;
   
   #define UA_TYPES_DOUBLECOMPLEXNUMBERTYPE 215
   
AxisInformation
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_EUInformation engineeringUnits;
       UA_Range eURange;
       UA_LocalizedText title;
       UA_AxisScaleEnumeration axisScaleType;
       size_t axisStepsSize;
       UA_Double *axisSteps;
   } UA_AxisInformation;
   
   #define UA_TYPES_AXISINFORMATION 216
   
XVType
^^^^^^

.. code-block:: c

   typedef struct {
       UA_Double x;
       UA_Float value;
   } UA_XVType;
   
   #define UA_TYPES_XVTYPE 217
   
EnumDefinition
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t fieldsSize;
       UA_EnumField *fields;
   } UA_EnumDefinition;
   
   #define UA_TYPES_ENUMDEFINITION 218
   
ReadEventDetails
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 numValuesPerNode;
       UA_DateTime startTime;
       UA_DateTime endTime;
       UA_EventFilter filter;
   } UA_ReadEventDetails;
   
   #define UA_TYPES_READEVENTDETAILS 219
   
ReadProcessedDetails
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime startTime;
       UA_DateTime endTime;
       UA_Double processingInterval;
       size_t aggregateTypeSize;
       UA_NodeId *aggregateType;
       UA_AggregateConfiguration aggregateConfiguration;
   } UA_ReadProcessedDetails;
   
   #define UA_TYPES_READPROCESSEDDETAILS 220
   
ModificationInfo
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime modificationTime;
       UA_HistoryUpdateType updateType;
       UA_String userName;
   } UA_ModificationInfo;
   
   #define UA_TYPES_MODIFICATIONINFO 221
   
HistoryModifiedData
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t dataValuesSize;
       UA_DataValue *dataValues;
       size_t modificationInfosSize;
       UA_ModificationInfo *modificationInfos;
   } UA_HistoryModifiedData;
   
   #define UA_TYPES_HISTORYMODIFIEDDATA 222
   
HistoryEvent
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventsSize;
       UA_HistoryEventFieldList *events;
   } UA_HistoryEvent;
   
   #define UA_TYPES_HISTORYEVENT 223
   
DataChangeNotification
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t monitoredItemsSize;
       UA_MonitoredItemNotification *monitoredItems;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DataChangeNotification;
   
   #define UA_TYPES_DATACHANGENOTIFICATION 224
   
EventNotificationList
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventsSize;
       UA_EventFieldList *events;
   } UA_EventNotificationList;
   
   #define UA_TYPES_EVENTNOTIFICATIONLIST 225
   
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
   
   #define UA_TYPES_SESSIONDIAGNOSTICSDATATYPE 226

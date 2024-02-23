Every type is assigned an index in an array containing the type descriptions.
These descriptions are used during type handling (copying, deletion,
binary encoding, ...).

.. code-block:: c

   #define UA_TYPES_COUNT 228
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
   
TrustListDataType
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 specifiedLists;
       size_t trustedCertificatesSize;
       UA_ByteString *trustedCertificates;
       size_t trustedCrlsSize;
       UA_ByteString *trustedCrls;
       size_t issuerCertificatesSize;
       UA_ByteString *issuerCertificates;
       size_t issuerCrlsSize;
       UA_ByteString *issuerCrls;
   } UA_TrustListDataType;
   
   #define UA_TYPES_TRUSTLISTDATATYPE 27
   
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
   
   #define UA_TYPES_NODECLASS 28
   
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
   
   #define UA_TYPES_STRUCTURETYPE 29
   
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
   
   #define UA_TYPES_STRUCTUREFIELD 30
   
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
   
   #define UA_TYPES_STRUCTUREDEFINITION 31
   
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
   
   #define UA_TYPES_ARGUMENT 32
   
EnumValueType
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int64 value;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
   } UA_EnumValueType;
   
   #define UA_TYPES_ENUMVALUETYPE 33
   
EnumField
^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int64 value;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
       UA_String name;
   } UA_EnumField;
   
   #define UA_TYPES_ENUMFIELD 34
   
Duration
^^^^^^^^

.. code-block:: c

   typedef UA_Double UA_Duration;
   
   #define UA_TYPES_DURATION 35
   
UtcTime
^^^^^^^

.. code-block:: c

   typedef UA_DateTime UA_UtcTime;
   
   #define UA_TYPES_UTCTIME 36
   
LocaleId
^^^^^^^^

.. code-block:: c

   typedef UA_String UA_LocaleId;
   
   #define UA_TYPES_LOCALEID 37
   
TimeZoneDataType
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Int16 offset;
       UA_Boolean daylightSavingInOffset;
   } UA_TimeZoneDataType;
   
   #define UA_TYPES_TIMEZONEDATATYPE 38
   
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
   
   #define UA_TYPES_APPLICATIONTYPE 39
   
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
   
   #define UA_TYPES_APPLICATIONDESCRIPTION 40
   
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
   
   #define UA_TYPES_REQUESTHEADER 41
   
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
   
   #define UA_TYPES_RESPONSEHEADER 42
   
ServiceFault
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_ServiceFault;
   
   #define UA_TYPES_SERVICEFAULT 43
   
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
   
   #define UA_TYPES_FINDSERVERSREQUEST 44
   
FindServersResponse
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t serversSize;
       UA_ApplicationDescription *servers;
   } UA_FindServersResponse;
   
   #define UA_TYPES_FINDSERVERSRESPONSE 45
   
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
   
   #define UA_TYPES_SERVERONNETWORK 46
   
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
   
   #define UA_TYPES_FINDSERVERSONNETWORKREQUEST 47
   
FindServersOnNetworkResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_DateTime lastCounterResetTime;
       size_t serversSize;
       UA_ServerOnNetwork *servers;
   } UA_FindServersOnNetworkResponse;
   
   #define UA_TYPES_FINDSERVERSONNETWORKRESPONSE 48
   
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
   
   #define UA_TYPES_MESSAGESECURITYMODE 49
   
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
   
   #define UA_TYPES_USERTOKENTYPE 50
   
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
   
   #define UA_TYPES_USERTOKENPOLICY 51
   
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
   
   #define UA_TYPES_ENDPOINTDESCRIPTION 52
   
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
   
   #define UA_TYPES_GETENDPOINTSREQUEST 53
   
GetEndpointsResponse
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t endpointsSize;
       UA_EndpointDescription *endpoints;
   } UA_GetEndpointsResponse;
   
   #define UA_TYPES_GETENDPOINTSRESPONSE 54
   
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
   
   #define UA_TYPES_REGISTEREDSERVER 55
   
RegisterServerRequest
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_RegisteredServer server;
   } UA_RegisterServerRequest;
   
   #define UA_TYPES_REGISTERSERVERREQUEST 56
   
RegisterServerResponse
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_RegisterServerResponse;
   
   #define UA_TYPES_REGISTERSERVERRESPONSE 57
   
MdnsDiscoveryConfiguration
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String mdnsServerName;
       size_t serverCapabilitiesSize;
       UA_String *serverCapabilities;
   } UA_MdnsDiscoveryConfiguration;
   
   #define UA_TYPES_MDNSDISCOVERYCONFIGURATION 58
   
RegisterServer2Request
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_RegisteredServer server;
       size_t discoveryConfigurationSize;
       UA_ExtensionObject *discoveryConfiguration;
   } UA_RegisterServer2Request;
   
   #define UA_TYPES_REGISTERSERVER2REQUEST 59
   
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
   
   #define UA_TYPES_REGISTERSERVER2RESPONSE 60
   
SecurityTokenRequestType
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef enum {
       UA_SECURITYTOKENREQUESTTYPE_ISSUE = 0,
       UA_SECURITYTOKENREQUESTTYPE_RENEW = 1,
       __UA_SECURITYTOKENREQUESTTYPE_FORCE32BIT = 0x7fffffff
   } UA_SecurityTokenRequestType;
   UA_STATIC_ASSERT(sizeof(UA_SecurityTokenRequestType) == sizeof(UA_Int32), enum_must_be_32bit);
   
   #define UA_TYPES_SECURITYTOKENREQUESTTYPE 61
   
ChannelSecurityToken
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 channelId;
       UA_UInt32 tokenId;
       UA_DateTime createdAt;
       UA_UInt32 revisedLifetime;
   } UA_ChannelSecurityToken;
   
   #define UA_TYPES_CHANNELSECURITYTOKEN 62
   
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
   
   #define UA_TYPES_OPENSECURECHANNELREQUEST 63
   
OpenSecureChannelResponse
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 serverProtocolVersion;
       UA_ChannelSecurityToken securityToken;
       UA_ByteString serverNonce;
   } UA_OpenSecureChannelResponse;
   
   #define UA_TYPES_OPENSECURECHANNELRESPONSE 64
   
CloseSecureChannelRequest
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
   } UA_CloseSecureChannelRequest;
   
   #define UA_TYPES_CLOSESECURECHANNELREQUEST 65
   
CloseSecureChannelResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_CloseSecureChannelResponse;
   
   #define UA_TYPES_CLOSESECURECHANNELRESPONSE 66
   
SignedSoftwareCertificate
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ByteString certificateData;
       UA_ByteString signature;
   } UA_SignedSoftwareCertificate;
   
   #define UA_TYPES_SIGNEDSOFTWARECERTIFICATE 67
   
SignatureData
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String algorithm;
       UA_ByteString signature;
   } UA_SignatureData;
   
   #define UA_TYPES_SIGNATUREDATA 68
   
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
   
   #define UA_TYPES_CREATESESSIONREQUEST 69
   
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
   
   #define UA_TYPES_CREATESESSIONRESPONSE 70
   
UserIdentityToken
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
   } UA_UserIdentityToken;
   
   #define UA_TYPES_USERIDENTITYTOKEN 71
   
AnonymousIdentityToken
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
   } UA_AnonymousIdentityToken;
   
   #define UA_TYPES_ANONYMOUSIDENTITYTOKEN 72
   
UserNameIdentityToken
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_String userName;
       UA_ByteString password;
       UA_String encryptionAlgorithm;
   } UA_UserNameIdentityToken;
   
   #define UA_TYPES_USERNAMEIDENTITYTOKEN 73
   
X509IdentityToken
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_ByteString certificateData;
   } UA_X509IdentityToken;
   
   #define UA_TYPES_X509IDENTITYTOKEN 74
   
IssuedIdentityToken
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String policyId;
       UA_ByteString tokenData;
       UA_String encryptionAlgorithm;
   } UA_IssuedIdentityToken;
   
   #define UA_TYPES_ISSUEDIDENTITYTOKEN 75
   
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
   
   #define UA_TYPES_ACTIVATESESSIONREQUEST 76
   
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
   
   #define UA_TYPES_ACTIVATESESSIONRESPONSE 77
   
CloseSessionRequest
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean deleteSubscriptions;
   } UA_CloseSessionRequest;
   
   #define UA_TYPES_CLOSESESSIONREQUEST 78
   
CloseSessionResponse
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_CloseSessionResponse;
   
   #define UA_TYPES_CLOSESESSIONRESPONSE 79
   
CancelRequest
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 requestHandle;
   } UA_CancelRequest;
   
   #define UA_TYPES_CANCELREQUEST 80
   
CancelResponse
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_UInt32 cancelCount;
   } UA_CancelResponse;
   
   #define UA_TYPES_CANCELRESPONSE 81
   
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
   
   #define UA_TYPES_NODEATTRIBUTESMASK 82
   
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
   
   #define UA_TYPES_NODEATTRIBUTES 83
   
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
   
   #define UA_TYPES_OBJECTATTRIBUTES 84
   
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
   
   #define UA_TYPES_VARIABLEATTRIBUTES 85
   
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
   
   #define UA_TYPES_METHODATTRIBUTES 86
   
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
   
   #define UA_TYPES_OBJECTTYPEATTRIBUTES 87
   
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
   
   #define UA_TYPES_VARIABLETYPEATTRIBUTES 88
   
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
   
   #define UA_TYPES_REFERENCETYPEATTRIBUTES 89
   
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
   
   #define UA_TYPES_DATATYPEATTRIBUTES 90
   
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
   
   #define UA_TYPES_VIEWATTRIBUTES 91
   
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
   
   #define UA_TYPES_ADDNODESITEM 92
   
AddNodesResult
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_NodeId addedNodeId;
   } UA_AddNodesResult;
   
   #define UA_TYPES_ADDNODESRESULT 93
   
AddNodesRequest
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToAddSize;
       UA_AddNodesItem *nodesToAdd;
   } UA_AddNodesRequest;
   
   #define UA_TYPES_ADDNODESREQUEST 94
   
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
   
   #define UA_TYPES_ADDNODESRESPONSE 95
   
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
   
   #define UA_TYPES_ADDREFERENCESITEM 96
   
AddReferencesRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t referencesToAddSize;
       UA_AddReferencesItem *referencesToAdd;
   } UA_AddReferencesRequest;
   
   #define UA_TYPES_ADDREFERENCESREQUEST 97
   
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
   
   #define UA_TYPES_ADDREFERENCESRESPONSE 98
   
DeleteNodesItem
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_Boolean deleteTargetReferences;
   } UA_DeleteNodesItem;
   
   #define UA_TYPES_DELETENODESITEM 99
   
DeleteNodesRequest
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToDeleteSize;
       UA_DeleteNodesItem *nodesToDelete;
   } UA_DeleteNodesRequest;
   
   #define UA_TYPES_DELETENODESREQUEST 100
   
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
   
   #define UA_TYPES_DELETENODESRESPONSE 101
   
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
   
   #define UA_TYPES_DELETEREFERENCESITEM 102
   
DeleteReferencesRequest
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t referencesToDeleteSize;
       UA_DeleteReferencesItem *referencesToDelete;
   } UA_DeleteReferencesRequest;
   
   #define UA_TYPES_DELETEREFERENCESREQUEST 103
   
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
   
   #define UA_TYPES_DELETEREFERENCESRESPONSE 104
   
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
   
   #define UA_TYPES_BROWSEDIRECTION 105
   
ViewDescription
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId viewId;
       UA_DateTime timestamp;
       UA_UInt32 viewVersion;
   } UA_ViewDescription;
   
   #define UA_TYPES_VIEWDESCRIPTION 106
   
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
   
   #define UA_TYPES_BROWSEDESCRIPTION 107
   
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
   
   #define UA_TYPES_BROWSERESULTMASK 108
   
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
   
   #define UA_TYPES_REFERENCEDESCRIPTION 109
   
BrowseResult
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_ByteString continuationPoint;
       size_t referencesSize;
       UA_ReferenceDescription *references;
   } UA_BrowseResult;
   
   #define UA_TYPES_BROWSERESULT 110
   
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
   
   #define UA_TYPES_BROWSEREQUEST 111
   
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
   
   #define UA_TYPES_BROWSERESPONSE 112
   
BrowseNextRequest
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean releaseContinuationPoints;
       size_t continuationPointsSize;
       UA_ByteString *continuationPoints;
   } UA_BrowseNextRequest;
   
   #define UA_TYPES_BROWSENEXTREQUEST 113
   
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
   
   #define UA_TYPES_BROWSENEXTRESPONSE 114
   
RelativePathElement
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId referenceTypeId;
       UA_Boolean isInverse;
       UA_Boolean includeSubtypes;
       UA_QualifiedName targetName;
   } UA_RelativePathElement;
   
   #define UA_TYPES_RELATIVEPATHELEMENT 115
   
RelativePath
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementsSize;
       UA_RelativePathElement *elements;
   } UA_RelativePath;
   
   #define UA_TYPES_RELATIVEPATH 116
   
BrowsePath
^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId startingNode;
       UA_RelativePath relativePath;
   } UA_BrowsePath;
   
   #define UA_TYPES_BROWSEPATH 117
   
BrowsePathTarget
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ExpandedNodeId targetId;
       UA_UInt32 remainingPathIndex;
   } UA_BrowsePathTarget;
   
   #define UA_TYPES_BROWSEPATHTARGET 118
   
BrowsePathResult
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t targetsSize;
       UA_BrowsePathTarget *targets;
   } UA_BrowsePathResult;
   
   #define UA_TYPES_BROWSEPATHRESULT 119
   
TranslateBrowsePathsToNodeIdsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t browsePathsSize;
       UA_BrowsePath *browsePaths;
   } UA_TranslateBrowsePathsToNodeIdsRequest;
   
   #define UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSREQUEST 120
   
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
   
   #define UA_TYPES_TRANSLATEBROWSEPATHSTONODEIDSRESPONSE 121
   
RegisterNodesRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToRegisterSize;
       UA_NodeId *nodesToRegister;
   } UA_RegisterNodesRequest;
   
   #define UA_TYPES_REGISTERNODESREQUEST 122
   
RegisterNodesResponse
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       size_t registeredNodeIdsSize;
       UA_NodeId *registeredNodeIds;
   } UA_RegisterNodesResponse;
   
   #define UA_TYPES_REGISTERNODESRESPONSE 123
   
UnregisterNodesRequest
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToUnregisterSize;
       UA_NodeId *nodesToUnregister;
   } UA_UnregisterNodesRequest;
   
   #define UA_TYPES_UNREGISTERNODESREQUEST 124
   
UnregisterNodesResponse
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
   } UA_UnregisterNodesResponse;
   
   #define UA_TYPES_UNREGISTERNODESRESPONSE 125
   
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
   
   #define UA_TYPES_FILTEROPERATOR 126
   
ContentFilterElement
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_FilterOperator filterOperator;
       size_t filterOperandsSize;
       UA_ExtensionObject *filterOperands;
   } UA_ContentFilterElement;
   
   #define UA_TYPES_CONTENTFILTERELEMENT 127
   
ContentFilter
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementsSize;
       UA_ContentFilterElement *elements;
   } UA_ContentFilter;
   
   #define UA_TYPES_CONTENTFILTER 128
   
ElementOperand
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 index;
   } UA_ElementOperand;
   
   #define UA_TYPES_ELEMENTOPERAND 129
   
LiteralOperand
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Variant value;
   } UA_LiteralOperand;
   
   #define UA_TYPES_LITERALOPERAND 130
   
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
   
   #define UA_TYPES_ATTRIBUTEOPERAND 131
   
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
   
   #define UA_TYPES_SIMPLEATTRIBUTEOPERAND 132
   
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
   
   #define UA_TYPES_CONTENTFILTERELEMENTRESULT 133
   
ContentFilterResult
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t elementResultsSize;
       UA_ContentFilterElementResult *elementResults;
       size_t elementDiagnosticInfosSize;
       UA_DiagnosticInfo *elementDiagnosticInfos;
   } UA_ContentFilterResult;
   
   #define UA_TYPES_CONTENTFILTERRESULT 134
   
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
   
   #define UA_TYPES_TIMESTAMPSTORETURN 135
   
ReadValueId
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_UInt32 attributeId;
       UA_String indexRange;
       UA_QualifiedName dataEncoding;
   } UA_ReadValueId;
   
   #define UA_TYPES_READVALUEID 136
   
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
   
   #define UA_TYPES_READREQUEST 137
   
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
   
   #define UA_TYPES_READRESPONSE 138
   
HistoryReadValueId
^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_String indexRange;
       UA_QualifiedName dataEncoding;
       UA_ByteString continuationPoint;
   } UA_HistoryReadValueId;
   
   #define UA_TYPES_HISTORYREADVALUEID 139
   
HistoryReadResult
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_ByteString continuationPoint;
       UA_ExtensionObject historyData;
   } UA_HistoryReadResult;
   
   #define UA_TYPES_HISTORYREADRESULT 140
   
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
   
   #define UA_TYPES_READRAWMODIFIEDDETAILS 141
   
ReadAtTimeDetails
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t reqTimesSize;
       UA_DateTime *reqTimes;
       UA_Boolean useSimpleBounds;
   } UA_ReadAtTimeDetails;
   
   #define UA_TYPES_READATTIMEDETAILS 142
   
HistoryData
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t dataValuesSize;
       UA_DataValue *dataValues;
   } UA_HistoryData;
   
   #define UA_TYPES_HISTORYDATA 143
   
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
   
   #define UA_TYPES_HISTORYREADREQUEST 144
   
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
   
   #define UA_TYPES_HISTORYREADRESPONSE 145
   
WriteValue
^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_UInt32 attributeId;
       UA_String indexRange;
       UA_DataValue value;
   } UA_WriteValue;
   
   #define UA_TYPES_WRITEVALUE 146
   
WriteRequest
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t nodesToWriteSize;
       UA_WriteValue *nodesToWrite;
   } UA_WriteRequest;
   
   #define UA_TYPES_WRITEREQUEST 147
   
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
   
   #define UA_TYPES_WRITERESPONSE 148
   
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
   
   #define UA_TYPES_HISTORYUPDATETYPE 149
   
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
   
   #define UA_TYPES_PERFORMUPDATETYPE 150
   
UpdateDataDetails
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_PerformUpdateType performInsertReplace;
       size_t updateValuesSize;
       UA_DataValue *updateValues;
   } UA_UpdateDataDetails;
   
   #define UA_TYPES_UPDATEDATADETAILS 151
   
DeleteRawModifiedDetails
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId nodeId;
       UA_Boolean isDeleteModified;
       UA_DateTime startTime;
       UA_DateTime endTime;
   } UA_DeleteRawModifiedDetails;
   
   #define UA_TYPES_DELETERAWMODIFIEDDETAILS 152
   
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
   
   #define UA_TYPES_HISTORYUPDATERESULT 153
   
HistoryUpdateRequest
^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t historyUpdateDetailsSize;
       UA_ExtensionObject *historyUpdateDetails;
   } UA_HistoryUpdateRequest;
   
   #define UA_TYPES_HISTORYUPDATEREQUEST 154
   
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
   
   #define UA_TYPES_HISTORYUPDATERESPONSE 155
   
CallMethodRequest
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_NodeId objectId;
       UA_NodeId methodId;
       size_t inputArgumentsSize;
       UA_Variant *inputArguments;
   } UA_CallMethodRequest;
   
   #define UA_TYPES_CALLMETHODREQUEST 156
   
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
   
   #define UA_TYPES_CALLMETHODRESULT 157
   
CallRequest
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t methodsToCallSize;
       UA_CallMethodRequest *methodsToCall;
   } UA_CallRequest;
   
   #define UA_TYPES_CALLREQUEST 158
   
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
   
   #define UA_TYPES_CALLRESPONSE 159
   
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
   
   #define UA_TYPES_MONITORINGMODE 160
   
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
   
   #define UA_TYPES_DATACHANGETRIGGER 161
   
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
   
   #define UA_TYPES_DEADBANDTYPE 162
   
DataChangeFilter
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DataChangeTrigger trigger;
       UA_UInt32 deadbandType;
       UA_Double deadbandValue;
   } UA_DataChangeFilter;
   
   #define UA_TYPES_DATACHANGEFILTER 163
   
EventFilter
^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t selectClausesSize;
       UA_SimpleAttributeOperand *selectClauses;
       UA_ContentFilter whereClause;
   } UA_EventFilter;
   
   #define UA_TYPES_EVENTFILTER 164
   
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
   
   #define UA_TYPES_AGGREGATECONFIGURATION 165
   
AggregateFilter
^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime startTime;
       UA_NodeId aggregateType;
       UA_Double processingInterval;
       UA_AggregateConfiguration aggregateConfiguration;
   } UA_AggregateFilter;
   
   #define UA_TYPES_AGGREGATEFILTER 166
   
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
   
   #define UA_TYPES_EVENTFILTERRESULT 167
   
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
   
   #define UA_TYPES_MONITORINGPARAMETERS 168
   
MonitoredItemCreateRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ReadValueId itemToMonitor;
       UA_MonitoringMode monitoringMode;
       UA_MonitoringParameters requestedParameters;
   } UA_MonitoredItemCreateRequest;
   
   #define UA_TYPES_MONITOREDITEMCREATEREQUEST 169
   
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
   
   #define UA_TYPES_MONITOREDITEMCREATERESULT 170
   
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
   
   #define UA_TYPES_CREATEMONITOREDITEMSREQUEST 171
   
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
   
   #define UA_TYPES_CREATEMONITOREDITEMSRESPONSE 172
   
MonitoredItemModifyRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 monitoredItemId;
       UA_MonitoringParameters requestedParameters;
   } UA_MonitoredItemModifyRequest;
   
   #define UA_TYPES_MONITOREDITEMMODIFYREQUEST 173
   
MonitoredItemModifyResult
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       UA_Double revisedSamplingInterval;
       UA_UInt32 revisedQueueSize;
       UA_ExtensionObject filterResult;
   } UA_MonitoredItemModifyResult;
   
   #define UA_TYPES_MONITOREDITEMMODIFYRESULT 174
   
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
   
   #define UA_TYPES_MODIFYMONITOREDITEMSRESPONSE 176
   
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
   
   #define UA_TYPES_SETMONITORINGMODEREQUEST 177
   
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
   
   #define UA_TYPES_SETMONITORINGMODERESPONSE 178
   
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
   
   #define UA_TYPES_SETTRIGGERINGREQUEST 179
   
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
   
   #define UA_TYPES_SETTRIGGERINGRESPONSE 180
   
DeleteMonitoredItemsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       size_t monitoredItemIdsSize;
       UA_UInt32 *monitoredItemIds;
   } UA_DeleteMonitoredItemsRequest;
   
   #define UA_TYPES_DELETEMONITOREDITEMSREQUEST 181
   
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
   
   #define UA_TYPES_DELETEMONITOREDITEMSRESPONSE 182
   
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
   
   #define UA_TYPES_CREATESUBSCRIPTIONREQUEST 183
   
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
   
   #define UA_TYPES_CREATESUBSCRIPTIONRESPONSE 184
   
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
   
   #define UA_TYPES_MODIFYSUBSCRIPTIONREQUEST 185
   
ModifySubscriptionResponse
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_Double revisedPublishingInterval;
       UA_UInt32 revisedLifetimeCount;
       UA_UInt32 revisedMaxKeepAliveCount;
   } UA_ModifySubscriptionResponse;
   
   #define UA_TYPES_MODIFYSUBSCRIPTIONRESPONSE 186
   
SetPublishingModeRequest
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_Boolean publishingEnabled;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
   } UA_SetPublishingModeRequest;
   
   #define UA_TYPES_SETPUBLISHINGMODEREQUEST 187
   
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
   
   #define UA_TYPES_SETPUBLISHINGMODERESPONSE 188
   
NotificationMessage
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 sequenceNumber;
       UA_DateTime publishTime;
       size_t notificationDataSize;
       UA_ExtensionObject *notificationData;
   } UA_NotificationMessage;
   
   #define UA_TYPES_NOTIFICATIONMESSAGE 189
   
MonitoredItemNotification
^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       UA_DataValue value;
   } UA_MonitoredItemNotification;
   
   #define UA_TYPES_MONITOREDITEMNOTIFICATION 190
   
EventFieldList
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 clientHandle;
       size_t eventFieldsSize;
       UA_Variant *eventFields;
   } UA_EventFieldList;
   
   #define UA_TYPES_EVENTFIELDLIST 191
   
HistoryEventFieldList
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventFieldsSize;
       UA_Variant *eventFields;
   } UA_HistoryEventFieldList;
   
   #define UA_TYPES_HISTORYEVENTFIELDLIST 192
   
StatusChangeNotification
^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode status;
       UA_DiagnosticInfo diagnosticInfo;
   } UA_StatusChangeNotification;
   
   #define UA_TYPES_STATUSCHANGENOTIFICATION 193
   
SubscriptionAcknowledgement
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 subscriptionId;
       UA_UInt32 sequenceNumber;
   } UA_SubscriptionAcknowledgement;
   
   #define UA_TYPES_SUBSCRIPTIONACKNOWLEDGEMENT 194
   
PublishRequest
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionAcknowledgementsSize;
       UA_SubscriptionAcknowledgement *subscriptionAcknowledgements;
   } UA_PublishRequest;
   
   #define UA_TYPES_PUBLISHREQUEST 195
   
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
   
   #define UA_TYPES_PUBLISHRESPONSE 196
   
RepublishRequest
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       UA_UInt32 subscriptionId;
       UA_UInt32 retransmitSequenceNumber;
   } UA_RepublishRequest;
   
   #define UA_TYPES_REPUBLISHREQUEST 197
   
RepublishResponse
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_ResponseHeader responseHeader;
       UA_NotificationMessage notificationMessage;
   } UA_RepublishResponse;
   
   #define UA_TYPES_REPUBLISHRESPONSE 198
   
TransferResult
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_StatusCode statusCode;
       size_t availableSequenceNumbersSize;
       UA_UInt32 *availableSequenceNumbers;
   } UA_TransferResult;
   
   #define UA_TYPES_TRANSFERRESULT 199
   
TransferSubscriptionsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
       UA_Boolean sendInitialValues;
   } UA_TransferSubscriptionsRequest;
   
   #define UA_TYPES_TRANSFERSUBSCRIPTIONSREQUEST 200
   
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
   
   #define UA_TYPES_TRANSFERSUBSCRIPTIONSRESPONSE 201
   
DeleteSubscriptionsRequest
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_RequestHeader requestHeader;
       size_t subscriptionIdsSize;
       UA_UInt32 *subscriptionIds;
   } UA_DeleteSubscriptionsRequest;
   
   #define UA_TYPES_DELETESUBSCRIPTIONSREQUEST 202
   
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
   
   #define UA_TYPES_DELETESUBSCRIPTIONSRESPONSE 203
   
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
   
   #define UA_TYPES_BUILDINFO 204
   
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
   
   #define UA_TYPES_REDUNDANCYSUPPORT 205
   
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
   
   #define UA_TYPES_SERVERSTATE 206
   
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
   
   #define UA_TYPES_SERVERDIAGNOSTICSSUMMARYDATATYPE 207
   
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
   
   #define UA_TYPES_SERVERSTATUSDATATYPE 208
   
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
   
   #define UA_TYPES_SESSIONSECURITYDIAGNOSTICSDATATYPE 209
   
ServiceCounterDataType
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 totalCount;
       UA_UInt32 errorCount;
   } UA_ServiceCounterDataType;
   
   #define UA_TYPES_SERVICECOUNTERDATATYPE 210
   
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
   
   #define UA_TYPES_SUBSCRIPTIONDIAGNOSTICSDATATYPE 211
   
Range
^^^^^

.. code-block:: c

   typedef struct {
       UA_Double low;
       UA_Double high;
   } UA_Range;
   
   #define UA_TYPES_RANGE 212
   
EUInformation
^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_String namespaceUri;
       UA_Int32 unitId;
       UA_LocalizedText displayName;
       UA_LocalizedText description;
   } UA_EUInformation;
   
   #define UA_TYPES_EUINFORMATION 213
   
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
   
   #define UA_TYPES_AXISSCALEENUMERATION 214
   
ComplexNumberType
^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Float real;
       UA_Float imaginary;
   } UA_ComplexNumberType;
   
   #define UA_TYPES_COMPLEXNUMBERTYPE 215
   
DoubleComplexNumberType
^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_Double real;
       UA_Double imaginary;
   } UA_DoubleComplexNumberType;
   
   #define UA_TYPES_DOUBLECOMPLEXNUMBERTYPE 216
   
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
   
   #define UA_TYPES_AXISINFORMATION 217
   
XVType
^^^^^^

.. code-block:: c

   typedef struct {
       UA_Double x;
       UA_Float value;
   } UA_XVType;
   
   #define UA_TYPES_XVTYPE 218
   
EnumDefinition
^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t fieldsSize;
       UA_EnumField *fields;
   } UA_EnumDefinition;
   
   #define UA_TYPES_ENUMDEFINITION 219
   
ReadEventDetails
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_UInt32 numValuesPerNode;
       UA_DateTime startTime;
       UA_DateTime endTime;
       UA_EventFilter filter;
   } UA_ReadEventDetails;
   
   #define UA_TYPES_READEVENTDETAILS 220
   
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
   
   #define UA_TYPES_READPROCESSEDDETAILS 221
   
ModificationInfo
^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       UA_DateTime modificationTime;
       UA_HistoryUpdateType updateType;
       UA_String userName;
   } UA_ModificationInfo;
   
   #define UA_TYPES_MODIFICATIONINFO 222
   
HistoryModifiedData
^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t dataValuesSize;
       UA_DataValue *dataValues;
       size_t modificationInfosSize;
       UA_ModificationInfo *modificationInfos;
   } UA_HistoryModifiedData;
   
   #define UA_TYPES_HISTORYMODIFIEDDATA 223
   
HistoryEvent
^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventsSize;
       UA_HistoryEventFieldList *events;
   } UA_HistoryEvent;
   
   #define UA_TYPES_HISTORYEVENT 224
   
DataChangeNotification
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t monitoredItemsSize;
       UA_MonitoredItemNotification *monitoredItems;
       size_t diagnosticInfosSize;
       UA_DiagnosticInfo *diagnosticInfos;
   } UA_DataChangeNotification;
   
   #define UA_TYPES_DATACHANGENOTIFICATION 225
   
EventNotificationList
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: c

   typedef struct {
       size_t eventsSize;
       UA_EventFieldList *events;
   } UA_EventNotificationList;
   
   #define UA_TYPES_EVENTNOTIFICATIONLIST 226
   
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
   
   #define UA_TYPES_SESSIONDIAGNOSTICSDATATYPE 227

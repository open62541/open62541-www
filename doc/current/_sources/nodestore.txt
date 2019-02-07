.. _information-modelling:

Information Modelling
=====================

Information modelling in OPC UA combines concepts from object-orientation and
semantic modelling. At the core, an OPC UA information model is a graph made
up of

- Nodes: There are eight possible Node types (variable, object, method, ...)
- References: Typed and directed relations between two nodes

Every node is identified by a unique (within the server) :ref:`nodeid`.
Reference are triples of the form ``(source-nodeid, referencetype-nodeid,
target-nodeid)``. An example reference between nodes is a
``hasTypeDefinition`` reference between a Variable and its VariableType. Some
ReferenceTypes are *hierarchic* and must not form *directed loops*. See the
section on :ref:`ReferenceTypes <referencetypenode>` for more details on
possible references and their semantics.

**Warning!!** The structures defined in this section are only relevant for
the developers of custom Nodestores. The interaction with the information
model is possible only via the OPC UA :ref:`services`. So the following
sections are purely informational so that users may have a clear mental
model of the underlying representation.

Base Node Attributes
--------------------

Nodes contain attributes according to their node type. The base node
attributes are common to all node types. In the OPC UA :ref:`services`,
attributes are referred to via the :ref:`nodeid` of the containing node and
an integer :ref:`attribute-id`.

Internally, open62541 uses ``UA_Node`` in places where the exact node type is
not known or not important. The ``nodeClass`` attribute is used to ensure the
correctness of casting from ``UA_Node`` to a specific node type.

.. code-block:: c

   
   /* List of reference targets with the same reference type and direction */
   typedef struct {
       UA_NodeId referenceTypeId;
       UA_Boolean isInverse;
       size_t targetIdsSize;
       UA_ExpandedNodeId *targetIds;
   } UA_NodeReferenceKind;
   
   #define UA_NODE_BASEATTRIBUTES                  \
       UA_NodeId nodeId;                           \
       UA_NodeClass nodeClass;                     \
       UA_QualifiedName browseName;                \
       UA_LocalizedText displayName;               \
       UA_LocalizedText description;               \
       UA_UInt32 writeMask;                        \
       size_t referencesSize;                      \
       UA_NodeReferenceKind *references;           \
                                                   \
       /* Members specific to open62541 */         \
       void *context;
   
   typedef struct {
       UA_NODE_BASEATTRIBUTES
   } UA_Node;
   
VariableNode
------------

Variables store values in a :ref:`datavalue` together with
metadata for introspection. Most notably, the attributes data type, value
rank and array dimensions constrain the possible values the variable can take
on.

Variables come in two flavours: properties and datavariables. Properties are
related to a parent with a ``hasProperty`` reference and may not have child
nodes themselves. Datavariables may contain properties (``hasProperty``) and
also datavariables (``hasComponents``).

All variables are instances of some :ref:`variabletypenode` in return
constraining the possible data type, value rank and array dimensions
attributes.

Data Type
^^^^^^^^^

The (scalar) data type of the variable is constrained to be of a specific
type or one of its children in the type hierarchy. The data type is given as
a NodeId pointing to a :ref:`datatypenode` in the type hierarchy. See the
Section :ref:`datatypenode` for more details.

If the data type attribute points to ``UInt32``, then the value attribute
must be of that exact type since ``UInt32`` does not have children in the
type hierarchy. If the data type attribute points ``Number``, then the type
of the value attribute may still be ``UInt32``, but also ``Float`` or
``Byte``.

Consistency between the data type attribute in the variable and its
:ref:`VariableTypeNode` is ensured.

Value Rank
^^^^^^^^^^

This attribute indicates whether the value attribute of the variable is an
array and how many dimensions the array has. It may have the following
values:

- ``n >= 1``: the value is an array with the specified number of dimensions
- ``n =  0``: the value is an array with one or more dimensions
- ``n = -1``: the value is a scalar
- ``n = -2``: the value can be a scalar or an array with any number of dimensions
- ``n = -3``: the value can be a scalar or a one dimensional array

Consistency between the value rank attribute in the variable and its
:ref:`variabletypenode` is ensured.

Array Dimensions
^^^^^^^^^^^^^^^^

If the value rank permits the value to be a (multi-dimensional) array, the
exact length in each dimensions can be further constrained with this
attribute.

- For positive lengths, the variable value is guaranteed to be of the same
  length in this dimension.
- The dimension length zero is a wildcard and the actual value may have any
  length in this dimension.

Consistency between the array dimensions attribute in the variable and its
:ref:`variabletypenode` is ensured.

.. code-block:: c

   
   /* Indicates whether a variable contains data inline or whether it points to an
    * external data source */
   typedef enum {
       UA_VALUESOURCE_DATA,
       UA_VALUESOURCE_DATASOURCE
   } UA_ValueSource;
   
   #define UA_NODE_VARIABLEATTRIBUTES                                      \
       /* Constraints on possible values */                                \
       UA_NodeId dataType;                                                 \
       UA_Int32 valueRank;                                                 \
       size_t arrayDimensionsSize;                                         \
       UA_UInt32 *arrayDimensions;                                         \
                                                                           \
       /* The current value */                                             \
       UA_ValueSource valueSource;                                         \
       union {                                                             \
           struct {                                                        \
               UA_DataValue value;                                         \
               UA_ValueCallback callback;                                  \
           } data;                                                         \
           UA_DataSource dataSource;                                       \
       } value;
   
   typedef struct {
       UA_NODE_BASEATTRIBUTES
       UA_NODE_VARIABLEATTRIBUTES
       UA_Byte accessLevel;
       UA_Double minimumSamplingInterval;
       UA_Boolean historizing;
   } UA_VariableNode;
   
.. _variabletypenode:

VariableTypeNode
----------------

VariableTypes are used to provide type definitions for variables.
VariableTypes constrain the data type, value rank and array dimensions
attributes of variable instances. Furthermore, instantiating from a specific
variable type may provide semantic information. For example, an instance from
``MotorTemperatureVariableType`` is more meaningful than a float variable
instantiated from ``BaseDataVariable``.

.. code-block:: c

   
   typedef struct {
       UA_NODE_BASEATTRIBUTES
       UA_NODE_VARIABLEATTRIBUTES
       UA_Boolean isAbstract;
   
       /* Members specific to open62541 */
       UA_NodeTypeLifecycle lifecycle;
   } UA_VariableTypeNode;
   
.. _methodnode:

MethodNode
----------

Methods define callable functions and are invoked using the :ref:`Call
<method-services>` service. MethodNodes may have special properties (variable
childen with a ``hasProperty`` reference) with the :ref:`qualifiedname` ``(0,
"InputArguments")`` and ``(0, "OutputArguments")``. The input and output
arguments are both described via an array of ``UA_Argument``. While the Call
service uses a generic array of :ref:`variant` for input and output, the
actual argument values are checked to match the signature of the MethodNode.

Note that the same MethodNode may be referenced from several objects (and
object types). For this, the NodeId of the method *and of the object
providing context* is part of a Call request message.

.. code-block:: c

   
   typedef struct {
       UA_NODE_BASEATTRIBUTES
       UA_Boolean executable;
   
       /* Members specific to open62541 */
       UA_MethodCallback method;
   } UA_MethodNode;
   
   
Attributes for nodes which are capable of generating events

.. code-block:: c

   #ifdef UA_ENABLE_SUBSCRIPTIONS_EVENTS
   /* Store active monitoredItems on this node */
   # define UA_EVENT_ATTRIBUTES                                         \
       struct UA_MonitoredItem *monitoredItemQueue;
   #endif
   
ObjectNode
----------

Objects are used to represent systems, system components, real-world objects
and software objects. Objects are instances of an :ref:`object
type<objecttypenode>` and may contain variables, methods and further
objects.

.. code-block:: c

   
   typedef struct {
       UA_NODE_BASEATTRIBUTES

---
title: "Error List and Error Identities Registries for YANG-driven protocols"
abbrev: "YANG Procotol Error Registries"
category: std

docname: draft-ietf-netconf-error-registries-latest
submissiontype: IETF
number:
date:
consensus: true
v: 3
area: ops
workgroup: NETCONF
keyword:
 - Internet-Draft

author:
 -
    fullname: Per Andersson
    organization: Ionio Systems
    email: per.ietf@ionio.se
 -
    fullname: Mithun Thai Valaphil
    organization: Equinix
    email: mithun.ietf@gmail.com

normative:
  RFC5226:
  RFC6241:
  RFC8040:
  RFC8639:
  RFC8641:
  RFC8783:

informative:

...

--- abstract

This document defines IANA registries for the YANG Protocol Error List and
YANG Protocol Error Identities.


--- middle

# Introduction

In order to have a canonical source for all errors and error identities for
YANG-driven procotols such as NETCONF {{RFC6241}} and RESTCONF {{RFC8040}},
two IANA registries are defined: YANG Protocol Error List and YANG Protocol
Error Identities. These registries can be extended and updated as needed.

It is an advantage for protocol evolution to have canonical sources to extend,
instead of a set of documents that need to be compiled and referenced.

# Conventions and Definitions

{::boilerplate bcp14-tagged}


# IANA Considerations

## YANG Protocol Error List Registry

This document defines a registry for the YANG Protocol Error List defined in
Appendix A of {{RFC6241}}. The name of the registry is "YANG Protocol Error
List". The review policy for this registry is "IETF Review" {{RFC5226}}. The
registry shall record the following for each entry:

- error-tag, mandatory
- error-app-tag, optional
- error-type, mandatory
- error-severity, mandatory
- error-info, optional: auxilary information described as data nodes (XML tags).
- Description, mandatory
- Reference: The reference for the document registering the value. Mandatory.

The initial contents of the registry is defined in {{RFC6241}} and inlined
below:

~~~
error-tag:      in-use
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    The request requires a resource that already is in
                use.
Reference:      RFC 6241

error-tag:      invalid-value
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    The request specifies an unacceptable value for one
                or more parameters.
Reference:      RFC 6241

error-tag:      too-big
error-type:     transport, rpc, protocol, application
error-severity: error
error-info:     none
Description:    The request or response (that would be generated) is
                too large for the implementation to handle.
Reference:      RFC 6241

error-tag:      missing-attribute
error-type:     rpc, protocol, application
error-severity: error
error-info:     <bad-attribute> : name of the missing attribute
                <bad-element> : name of the element that is supposed
                  to contain the missing attribute
Description:    An expected attribute is missing.
Reference:      RFC 6241

error-tag:      bad-attribute
error-type:     rpc, protocol, application
error-severity: error
error-info:     <bad-attribute> : name of the attribute w/ bad value
                <bad-element> : name of the element that contains
                  the attribute with the bad value
Description:    An attribute value is not correct; e.g., wrong type,
                out of range, pattern mismatch.
Reference:      RFC 6241

error-tag:      unknown-attribute
error-type:     rpc, protocol, application
error-severity: error
error-info:     <bad-attribute> : name of the unexpected attribute
                <bad-element> : name of the element that contains
                  the unexpected attribute
Description:    An unexpected attribute is present.
Reference:      RFC 6241

error-tag:      missing-element
error-type:     protocol, application
error-severity: error
error-info:     <bad-element> : name of the missing element
Description:    An expected element is missing.
Reference:      RFC 6241

error-tag:      bad-element
error-type:     protocol, application
error-severity: error
error-info:     <bad-element> : name of the element w/ bad value
Description:    An element value is not correct; e.g., wrong type,
                out of range, pattern mismatch.
Reference:      RFC 6241

error-tag:      unknown-element
error-type:     protocol, application
error-severity: error
error-info:     <bad-element> : name of the unexpected element
Description:    An unexpected element is present.
Reference:      RFC 6241

error-tag:      unknown-namespace
error-type:     protocol, application
error-severity: error
error-info:     <bad-element> : name of the element that contains
                the unexpected namespace
                <bad-namespace> : name of the unexpected namespace
Description:    An unexpected namespace is present.
Reference:      RFC 6241

error-tag:      access-denied
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    Access to the requested protocol operation or
                data model is denied because authorization failed.
Reference:      RFC 6241

error-tag:      lock-denied
error-type:     protocol
error-severity: error
error-info:     <session-id> : session ID of session holding the
                  requested lock, or zero to indicate a non-NETCONF
                  entity holds the lock
Description:    Access to the requested lock is denied because the
                lock is currently held by another entity.
Reference:      RFC 6241

error-tag:      resource-denied
error-type:     transport, rpc, protocol, application
error-severity: error
error-info:     none
Description:    Request could not be completed because of
                insufficient resources.
Reference:      RFC 6241

error-tag:      rollback-failed
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    Request to roll back some configuration change (via
                rollback-on-error or <discard-changes> operations)
                was not completed for some reason.
Reference:      RFC 6241

error-tag:      data-exists
error-type:     application
error-severity: error
error-info:     none
Description:    Request could not be completed because the relevant
                data model content already exists.  For example,
                a "create" operation was attempted on data that
                already exists.
Reference:      RFC 6241

error-tag:      data-missing
error-type:     application
error-severity: error
error-info:     none
Description:    Request could not be completed because the relevant
                data model content does not exist.  For example,
                a "delete" operation was attempted on
                data that does not exist.
Reference:      RFC 6241

error-tag:      operation-not-supported
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    Request could not be completed because the requested
                operation is not supported by this implementation.
Reference:      RFC 6241

error-tag:      partial-operation
error-type:     application
error-severity: error
error-info:     <ok-element> : identifies an element in the data
                  model for which the requested operation has been
                  completed for that node and all its child nodes.
                  This element can appear zero or more times in the
                  <error-info> container.

                <err-element> : identifies an element in the data
                  model for which the requested operation has failed
                  for that node and all its child nodes.
                  This element can appear zero or more times in the
                  <error-info> container.

                <noop-element> : identifies an element in the data
                  model for which the requested operation was not
                  attempted for that node and all its child nodes.
                  This element can appear zero or more times in the
                  <error-info> container.
Reference:      RFC 6241

Description:    This error-tag is obsolete, and SHOULD NOT be sent
                by servers conforming to this document.

                Some part of the requested operation failed or was
                not attempted for some reason.  Full cleanup has
                not been performed (e.g., rollback not supported)
                by the server.  The error-info container is used
                to identify which portions of the application
                data model content for which the requested operation
                has succeeded (<ok-element>), failed (<bad-element>),
                or not been attempted (<noop-element>).
Reference:      RFC 6241

error-tag:      malformed-message
error-type:     rpc
error-severity: error
error-info:     none
Description:    A message could not be handled because it failed to
                be parsed correctly.  For example, the message is not
                well-formed XML or it uses an invalid character set.

                This error-tag is new in :base:1.1 and MUST NOT be
                sent to old clients.
Reference:      RFC 6241

error-tag:      operation-failed
error-app-tag:  loop-detected
error-type:     transport, application
error-info:     <via-header> : A copy of the Via header field when
                the loop was detected.
Description:    An infinite loop has been detected when forwarding
                a requests via a proxy.
Reference:      RFC 8783
~~~


## YANG Protocol Error Identities Registry

This document defines a registry for YANG Protocol Error Identities. The name
of the registry is "YANG Protocol Error Identities". The review policy for
this registry is "IETF Review" {{RFC5226}}. The registry shall record the
following for each entry:

- Identity name.
- Base identity, if applicable.
- Additional information.
- The reference for the document registering the value.

The initial contents of the registry is defined in {{RFC8639}} and {{RFC8641}}
and inlined below:

~~~
dscp-unavailable
encoding-unsupported
filter-unsupported
insufficient-resources
replay-unsupported

filter-unsupported
insufficient-resources
no-such-subscription

no-such-subscription

datastore-not-subscribable
unchanging-selection

period-unsupported
update-too-big
synchronization-size
~~~

--- back

# Acknowledgments
{:numbered="false"}

TODO acknowledge.

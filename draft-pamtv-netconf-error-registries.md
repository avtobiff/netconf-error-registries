---
title: "NETCONF Error List and Error Identities Registries"
abbrev: "NETCONF Error Registries"
category: std

docname: draft-pamtv-netconf-error-registries-latest
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
  RFC8639:
  RFC8641:

informative:

...

--- abstract

This document defines IANA registries for the NETCONF Error List and NETCONF
Error Identities.


--- middle

# Introduction

In order to have a canonical source for all NETCONF Error and NETCONF Error
Identities, two IANA registries are defined. These registries can be extended
and updated as needed.

It is an advantage for protocol evolution to have canonical sources to extend,
instead of a set of documents that need to be compiled and referenced.

# Conventions and Definitions

{::boilerplate bcp14-tagged}


# IANA Considerations

## NETCONF Error List Registry

This document defines a registry for the NETCONF Error List defined in
Appendix A of {{RFC6241}}. The name of the registry is "NETCONF Error List".
The review policy for this registry is "IETF Review" {{RFC5226}}. The registry
shall record the following for each entry:

- error-tag, TBD
- error-type, TBD
- error-severity, TBD
- error-info, auxilary information described as data nodes (XML tags).
- Description
- The reference for the document registering the value.

The initial contents of the registry is defined in {{RFC6241}} and inlined
below:

~~~
error-tag:      in-use
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    The request requires a resource that already is in
                use.

error-tag:      invalid-value
error-type:     protocol, application
error-severity: error
error-info:     none
Description:    The request specifies an unacceptable value for one
                or more parameters.

error-tag:      too-big
error-type:     transport, rpc, protocol, application
error-severity: error
error-info:     none
Description:    The request or response (that would be generated) is
                too large for the implementation to handle.

error-tag:      missing-attribute
error-type:     rpc, protocol, application
error-severity: error
error-info:     <bad-attribute> : name of the missing attribute
                <bad-element> : name of the element that is supposed
                  to contain the missing attribute
Description:    An expected attribute is missing.

error-tag:      bad-attribute
error-type:     rpc, protocol, application
error-severity: error
error-info:     <bad-attribute> : name of the attribute w/ bad value
                <bad-element> : name of the element that contains
                  the attribute with the bad value
Description:    An attribute value is not correct; e.g., wrong type,
                out of range, pattern mismatch.
~~~


## NETCONF Error Identities

This document defines a registry for NETCONF Error Identities. The name of the
registry is "NETCONF Error Identities". The review policy for this registry is
"IETF Review" {{RFC5226}}. The registry shall record the following for each
entry:

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

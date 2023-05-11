# Red Hat OpenShift - Demo

The purpose of this repository is to provide a set of simple proof-of-concept configuration scripts for OpenShift and various features on OpenShift on Power.

# Feature
1. [OpenShift `oc` plugin](oc_plugin) a sample plugin for `oc` running on mulitple architectures where the [`oc`](https://access.redhat.com/downloads/content/290/ver=4.10/rhel---8/4.10.6/x86_64/product-software) tool manages all the OpenShift resources with handy commands for OpenShift and Kubernetes. The [OpenShift Client CLI (oc)](https://github.com/openshift/oc) project is built on top of [`kubectl`](https://kubernetes.io/docs/reference/kubectl/) adding built-in features to simplify interactions with an OpenShift cluster.
1. [OpenShift RequestHeader Identity Provider with a Test IdP](alternative_auth_request_header) [OpenShift 4.10: Configuring a request header identity provider](https://docs.openshift.com/container-platform/4.10/authentication/identity_providers/configuring-request-header-identity-provider.html) enables an external service to act as an identity provider where a X-Remote-User header to identify the user's identity.
1. [OpenShift Descheduler Policy](descheduler_policy) shows various use cases with the Descheduler Operator in OpenShift.
1. [Topology Manager](topology_manager) aligns pod resources for optimal CPU, Memory, Device and other Topology placements in a cluster.
1. [Ghost](ghost/) uses kustomize to deploy a working ghost blogging site.
1. [compliance/openscap-scanner-on-mac](compliance/openscap-scanner-on-mac) how to run the compliance oscap tool on Mac.
1. [job cronjob](job_cronjob) shows advanced job and cronjob definitions.
1. [Sock Shop](sock_shop) a multi architecture compute demonstration using [Sock Shop](https://github.com/microservices-demo) from WeaveWorks.
1. [Mutating Webhook Demo](mutating) adds annotations and nodeSelector

# Is this a Red Hat or IBM supported solution?

No. This is only a proof-of-concept that serves as a good starting point to understand how the various features work with OpenShift.

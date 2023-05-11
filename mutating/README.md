### Using the MutatingAdmissionWebhook to facilitate multiarch prototypes

This demonstrate includes code to facilitate using the MutatingAdmissionWebhook to facilitate multiarchtecture prototypes where a manifest listed image exist and needs to be used or a nodeSelector needs to be injected.

The admission controller is an interceptor in the Kubernetes API server which is executed after authentication and authorization and prior to persisting an object in etcd. There are a few flavors of interceptors the validator and the mutating.

Per the Kubernetes documentation, the mutating flavor, called MutatingAdmissionWebhook, is executed for matching requests and modified the object.

For this demonstration, we are using building the code for the webhook.

The code adds an annotation and a nodeSelector. It provides a framework for additions.

### References
1. [hmcts/k8s-env-injector](https://github.com/hmcts/k8s-env-injector) provided inspiration for this approach and updates the code patterns for the latest kubernetes versions.
2. [phenixblue/imageswap-webhook](https://github.com/phenixblue/imageswap-webhook) provided the python based pattern for this approach.
3. [Kubernetes: MutatingAdmissionWebhook](https://kubernetes.io/docs/reference/access-authn-authz/admission-controllers/#mutatingadmissionwebhook)
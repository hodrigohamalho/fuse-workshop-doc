# Red Hat Fuse Workshop

This project is a sequence of hands-on labs to help people understand Red Hat Fuse based on the community project Apache Camel  in a hands-on approach.

This is focused on the Fuse with Spring Boot.

Those walkthroughs follow the structure to be deployed in the Red Hat *Integreatly* environment.

* [Project setup](walkthroughs/00-project-setup/walkthrough.adoc)
* [Hello Router](walkthroughs/01-hello-router/walkthrough.adoc)
* [Content Base Router](walkthroughs/02-camel-cbr/walkthrough.adoc)
* [Interacting with Database](walkthroughs/03-camel-sql/walkthrough.adoc)
* [REST](walkthroughs/04-camel-rest/walkthrough.adoc)
* [Messaging](walkthroughs/05-camel-messaging/walkthrough.adoc)
* [Deploy in Openshift/Kubernetes](walkthroughs/06-camel-openshift/walkthrough.adoc)

If you would like to contribute, there are some interesting topics.

* Exceptions
* Debug
* Testing
* SOAP to Rest
* REST from OAS (Swagger)


## SETUP this Walkthrough in Integreatly Environment 

. Login as admin in your openshift cluster
. Add this repository to your walkthrough catalog

    oc set env dc tutorial-web-app WALKTHROUGH_LOCATIONS="https://github.com/integr8ly/tutorial-web-app-walkthroughs.git#v1.1.1,https://github.com/hodrigohamalho/fuse-springboot-workshop.git#master" -n webapp

Now, you must see those walkthrough sessions in initial page.

![Walkthough Catalog](images/walkthrough-catalog.png)

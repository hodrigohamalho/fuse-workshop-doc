# Red Hat Fuse Workshop

This project is a sequence of hands-on labs to help people understand Red Hat Fuse based on the community project Apache Camel  in a hands-on approach.

This is focused on the Fuse with Spring Boot. But also have a few labs with Camel K and Fuse Online (Syndesis)

Those walkthroughs follow the structure to be deployed in the **Red Hat Integreatly** environment.

## Pre Requirements

* Notebook (At least 4 GB RAM)
* JDK 1.8+
* Git
* oc client 
** https://access.redhat.com/downloads/content/290[Download from Red Hat]
** https://www.okd.io/download.html[Download from Community]
* https://visualstudio.microsoft.com/downloads/[Visual Studio IDE]

## Agenda

| Time                | Activity                                                              |
| ------------------- | --------------------------------------------------------------------- |
| 8:00-9:00           | Registration and breakfast                                            |
| 9:00-10:00          | An introduction to agile integration concepts, use cases, and roadmap |
| 10:00-11:00         | Hands on demo                                                         |
| 11:00-11:15         | Break                                                                 |
| 11:15-12:00         | **Labs**                                                              |
| 12:00-13:00         | Lunch                                                                 |
| 13:00-15:30         | **Lab:**                                                              |
| 15:30-16:00         | Recap and summary                                                     |

* [Project setup](walkthroughs/00-project-setup/walkthrough.adoc)
* [Hello Router](walkthroughs/01-hello-router/walkthrough.adoc)
* [Content Base Router](walkthroughs/02-camel-cbr/walkthrough.adoc)
* [Interacting with Database](walkthroughs/03-camel-sql/walkthrough.adoc)
* [REST](walkthroughs/04-camel-rest/walkthrough.adoc)
* [Messaging](walkthroughs/05-camel-messaging/walkthrough.adoc)
* [Deploy in Openshift/Kubernetes](walkthroughs/06-camel-openshift/walkthrough.adoc)


## Setup in Integreatly Environment 

. Login as admin in your openshift cluster
. Add this repository to your walkthrough catalog

    oc set env dc tutorial-web-app WALKTHROUGH_LOCATIONS="https://github.com/integr8ly/tutorial-web-app-walkthroughs.git#v1.1.1,https://github.com/hodrigohamalho/fuse-springboot-workshop.git#master" -n webapp

Now, you must see those walkthrough sessions in initial page.

![Walkthough Catalog](images/walkthrough-catalog.png)

# FUSE 
BASEURL=https://raw.githubusercontent.com/jboss-fuse/application-templates/application-templates-2.1.0.fuse-760043-redhat-00003

oc create -n openshift -f ${BASEURL}/fis-image-streams.json
# oc replace --force -n openshift -f ${BASEURL}/fis-image-streams.json

for template in eap-camel-amq-template.json \
 eap-camel-cdi-template.json \
 eap-camel-cxf-jaxrs-template.json \
 eap-camel-cxf-jaxws-template.json \
 eap-camel-jpa-template.json \
 karaf-camel-amq-template.json \
 karaf-camel-log-template.json \
 karaf-camel-rest-sql-template.json \
 karaf-cxf-rest-template.json \
 spring-boot-camel-amq-template.json \
 spring-boot-camel-config-template.json \
 spring-boot-camel-drools-template.json \
 spring-boot-camel-infinispan-template.json \
 spring-boot-camel-rest-sql-template.json \
 spring-boot-camel-rest-3scale-template.json \
 spring-boot-camel-template.json \
 spring-boot-camel-xa-template.json \
 spring-boot-camel-xml-template.json \
 spring-boot-cxf-jaxrs-template.json \
 spring-boot-cxf-jaxws-template.json ;
 do
 oc create -n openshift -f \
 https://raw.githubusercontent.com/jboss-fuse/application-templates/application-templates-2.1.0.fuse-760043-redhat-00003/quickstarts/${template}
 done

for template in spring-boot-2-camel-amq-template.json \
 spring-boot-2-camel-config-template.json \
 spring-boot-2-camel-drools-template.json \
 spring-boot-2-camel-infinispan-template.json \
 spring-boot-2-camel-rest-3scale-template.json \
 spring-boot-2-camel-rest-sql-template.json \
 spring-boot-2-camel-teiid-template.json \
 spring-boot-2-camel-template.json \
 spring-boot-2-camel-xa-template.json \
 spring-boot-2-camel-xml-template.json \
 spring-boot-2-cxf-jaxrs-template.json \
 spring-boot-2-cxf-jaxws-template.json \
 spring-boot-2-cxf-jaxrs-xml-template.json \
 spring-boot-2-cxf-jaxws-xml-template.json ;
 do oc create -n openshift -f \
 https://raw.githubusercontent.com/jboss-fuse/application-templates/application-templates-2.1.0.fuse-sb2-760039-redhat-00001/quickstarts/${template}
 done

oc create -n openshift -f https://raw.githubusercontent.com/jboss-fuse/application-templates/application-templates-2.1.0.fuse-760043-redhat-00003/fis-console-cluster-template.json
oc create -n openshift -f https://raw.githubusercontent.com/jboss-fuse/application-templates/application-templates-2.1.0.fuse-760043-redhat-00003/fis-console-namespace-template.json
oc create -n openshift -f ${BASEURL}/fuse-apicurito.yml
oc adm policy add-cluster-role-to-user cluster-admin system:serviceaccount:openshift-infra:template-instance-controller

# oc new-app -n myproject -f https://raw.githubusercontent.com/jboss-fuse/application-templates/application-templates-2.1.0.fuse-760043-redhat-00003/fis-console-namespace-template.json

# AMQ
oc replace --force  -f https://raw.githubusercontent.com/jboss-container-images/jboss-amq-7-broker-openshift-image/74-7.4.0.GA/amq-broker-7-image-streams.yaml -n openshift
for template in amq-broker-74-basic.yaml amq-broker-74-ssl.yaml amq-broker-74-custom.yaml amq-broker-74-persistence.yaml amq-broker-74-persistence-ssl.yaml amq-broker-74-persistence-clustered.yaml amq-broker-74-persistence-clustered-ssl.yaml;  
do  
    oc replace --force -f https://raw.githubusercontent.com/jboss-container-images/jboss-amq-7-broker-openshift-image/74-7.4.0.GA/templates/${template} -n openshift;  
done

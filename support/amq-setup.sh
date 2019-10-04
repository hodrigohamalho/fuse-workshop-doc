oc replace --force  -f https://raw.githubusercontent.com/jboss-container-images/jboss-amq-7-broker-openshift-image/74-7.4.0.GA/amq-broker-7-image-streams.yaml -n openshift
for template in amq-broker-74-basic.yaml amq-broker-74-ssl.yaml amq-broker-74-custom.yaml amq-broker-74-persistence.yaml amq-broker-74-persistence-ssl.yaml amq-broker-74-persistence-clustered.yaml amq-broker-74-persistence-clustered-ssl.yaml;  
do  
    oc replace --force -f https://raw.githubusercontent.com/jboss-container-images/jboss-amq-7-broker-openshift-image/74-7.4.0.GA/templates/${template} -n openshift;  
done

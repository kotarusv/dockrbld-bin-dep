FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war
ADD https://github.com/jboss-openshift/openshift-examples/blob/master/helloworld/configuration/standalone-openshift.xml.orig -o $JBOSS_HOME/standalone/configuration/stanalone-openshift.xml

FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:latest
RUN curl https://github.com/kotarusv/dockrbld-bin-dep/blob/master/ROOT.war -o $JBOSS_HOME/standalone/deployments/sample.war
RUN curl  https://raw.githubusercontent.com/jboss-openshift/openshift-examples/master/helloworld/configuration/standalone-openshift.xml.orig -o $JBOSS_HOME/standalone/configuration/stanalone-openshift.xml

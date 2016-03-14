FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4
EXPOSE 8080 8888
RUN curl https://tomcat.apache.org/tomcat-6.0-doc/appdev/sample/sample.war -o $JBOSS_HOME/standalone/deployments/ROOT.war

ARG IMAGE=containers.intersystems.com/intersystems/iris:2020.4.0.524.0
FROM $IMAGE

USER root

WORKDIR /opt/irisapp
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /opt/irisapp

USER irisowner

COPY  Installer.cls .
COPY  src src
COPY  src/gbl gbl
COPY irissession.sh /
COPY data txtdata

# running IRIS and open IRIS termninal in USER namespace
SHELL ["/irissession.sh"]
# below is objectscript executed in terminal
# each row is what you type in terminal and Enter
# zpm "install webterminal" 
RUN \
  do $SYSTEM.OBJ.Load("Installer.cls", "ck") \
  set sc = ##class(App.Installer).setup() \
  zn "IRISAPP"
  
# bringing the standard shell back
SHELL ["/bin/bash", "-c"]
CMD [ "-l", "/usr/irissys/mgr/messages.log" ]

from ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y build-essential

RUN apt-get install -y libaio1 \
    libaio-dev \
    libfontconfig1 \
    libfreetype6 \ 
    libfreetype6-dev \
    libstdc++6

RUN mkdir -p /opt/appDynamicsInstaller

COPY controller_64bit_linux-4.2.11.0.sh /opt/appDynamics/Installer/controller_64bit_linux-4.2.11.0.sh
RUN chmod +x /opt/appDynamics/Installer/controller_64bit_linux-4.2.11.0.sh
COPY license.lic /opt/appDynamics/Installer/license.lic

EXPOSE 8090
EXPOSE 8181
EXPOSE 443

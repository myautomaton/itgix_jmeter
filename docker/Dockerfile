# BASE IMAGE 
FROM centos:latest 

ARG SSH_KEY 

# USERS AND GROUPS 
RUN useradd -ms /bin/bash centos 

# INSTALL REQUIREMENTS 
RUN yum install -y epel-release java-1.8.0-openjdk git tar 

# PREPARE PRIVATE KEY STORE 
RUN mkdir /root/.ssh/ 

# MAKE FOLDERS 
RUN mkdir -p /opt/jmeter
RUN mkdir -p /opt/output 
RUN mkdir -p /opt/scripts 
RUN mkdir -p /opt/git 
RUN mkdir -p /opt/tests 
# PROVIDE SSH KEY FOR GIT PULL
RUN echo "$SSH_KEY" > /root/.ssh/id_rsa 

# COPY JMETER AND ALL PLUGINS 
COPY jmeter /opt/jmeter

# COPY RUN SCRIPT 
COPY runjmeter.sh /opt/scripts 
COPY testplan.jmx /opt/git 

# UPDATE ACCESS RIGHTS 
RUN chmod 0755 /opt -Rv 

# ADD CREDENTIALS ON RUN 
RUN chmod 600 /root/.ssh/* 
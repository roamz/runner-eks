FROM centos:7
COPY mongodb-org-4.0.repo /etc/yum.repos.d/
RUN yum install -y epel-release && yum update -y && yum install -y python python-pip redis mongodb-org-shell
RUN pip install pip awscli --upgrade
RUN curl -Lo /usr/local/bin/kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x /usr/local/bin/kubectl
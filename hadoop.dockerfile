FROM --platform=amd64 centos7-ssh
ADD jre-8u331-linux-x64.tar.gz /usr/local
RUN mv usr/local/jre1.8.0_331 /usr/local/jdk1.8
ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH

ADD ../hadoop-3.2.3.tar.gz /usr/local
RUN mv /usr/local/hadoop-3.2.3 /usr/local/hadoop
ENV HADOOP_HOME /usr/local/hadoop
ENV PATH $HADOOP_HOME/bin:$PATH

RUN yum install -y which sudo
RUN yum install -y vim 

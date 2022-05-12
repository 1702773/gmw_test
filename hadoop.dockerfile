FROM --platform=amd64 centos7-ssh
ADD jre-8u331-linux-x64.tar.gz /usr/local
RUN mv usr/local/jre1.8.0_331 /usr/local/jdk1.8
ENV JAVA_HOME /usr/local/jdk1.8
ENV PATH $JAVA_HOME/bin:$PATH

ADD ../hadoop-3.2.3.tar.gz /usr/local
RUN mv /usr/local/hadoop-3.2.3 /usr/local/hadoop
ENV HADOOP_HOME /usr/local/hadoop
ENV PATH $HADOOP_HOME/bin:$PATH
ENV PATH $HADOOP_HOME/sbin:$PATH
ENV HADOOP_MAPRED_HOME ${HADOOP_HOME}
ENV HADOOP_COMMON_HOME ${HADOOP_HOME}
ENV HADOOP_HDFS_HOME ${HADOOP_HOME}
ENV YARN_HOME ${HADOOP_HOME}
ENV HADOOP_COMMON_LIB_NATIVE_DIR $HADOOP_HOME/lib/native
ENV HADOOP_OPTS "-Djava.library.path=${HADOOP_HOME}/lib"
ENV JAVA_LIBRARY_PATH $HADOOP_HOME/lib/native:$JAVA_LIBRARY_PATH	

ENV HDFS_NAMENODE_USER root
ENV HDFS_DATANODE_USER root
ENV HDFS_SECONDARYNAMENODE_USER root
ENV YARN_RESOURCEMANAGER_USER root
ENV YARN_NODEMANAGER_USER root
ENV JAVA_HOME=/usr/local/jdk1.8

RUN yum install -y which sudo
RUN yum install -y vim 

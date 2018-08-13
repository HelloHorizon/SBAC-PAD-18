#please change the directory accoeding to your own configuration
export SCALA_HOME=/usr/bin/scala
export JAVA_HOME=${JAVA_HOME}
#export HADOOP_HOME=/ssd/sc1534/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
SPARK_MASTER_IP=caper01.rutgers.edu
SPARK_LOCAL_DIRS=/ssd/sc1534/spark-1.5
SPARK_DRIVER_MEMORY=20G
export SPARK_HISTORY_OPTS="-Dspark.history.retainedApplications=20"

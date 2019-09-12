sudo yum install java-1.8.0-openjdk-devel -y
sudo yum remove java-1.7.0-openjdk -y
sudo sh -c 'echo "export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk.x86_64" >> /etc/environment'
source /etc/environment
sudo mkdir -p /opt/tibco/tce-cli
sudo chown ec2-user.ec2-user -R /opt/tibco
unzip ../utils/tce-cli-distribution-2.0.1-SNAPSHOT.zip -d /opt/tibco/tce-cli
sudo sh -c 'echo "export TCECLI_HOME=/opt/tibco/tce-cli" >> /etc/environment'
sudo sh -c 'echo "export PATH=${PATH}:${TCECLI_HOME}/bin" >> /etc/environment'
source /etc/environment


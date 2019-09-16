sudo yum install java-1.8.0-openjdk-devel -y
sudo yum remove java-1.7.0-openjdk -y
sudo sh -c 'echo "export JAVA_HOME=/usr/lib/jvm/jre-1.8.0-openjdk.x86_64" >> /etc/environment'
source /etc/environment

# Install TCE CLI
sudo mkdir -p /opt/tibco/tce-cli
sudo chown ec2-user.ec2-user -R /opt/tibco
unzip ../utils/tce-cli-distribution-2.0.1-SNAPSHOT.zip -d /opt/tibco/tce-cli
sudo sh -c 'echo "export TCECLI_HOME=/opt/tibco/tce-cli" >> /etc/environment'
sudo sh -c 'echo "export PATH=${PATH}:${TCECLI_HOME}/bin" >> /etc/environment'
source /etc/environment

# Install TCI CLI
mkdir -p /opt/tibco/tci-cli
cp ../utils/tbicli_linux /opt/tibco/tci-cli/tibcli
chmod 555 /opt/tibco/tci-cli/tibcli
sudo sh -c 'echo "export TCICLI_HOME=/opt/tibco/tci-cli" >> /etc/environment'
sudo sh -c 'echo "export PATH=${PATH}:${TCICLI_HOME}" >> /etc/environment'
echo "source /etc/environment" >> ~/.bash_profile

chmod 755 ~/environment/keys2cloud2019/scripts/deploy_tci.sh

# tce-cli
# login tce:login
#   enter credentials
# push app tce:push-application sandboxName archive [appSize]
#   tce:push-application default /home/ec2-user/environment/keys2cloud2019/project/TNCDemoWJK.ear

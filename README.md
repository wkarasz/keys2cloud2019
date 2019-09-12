# Keys to the Cloud Workshop
The workshop requires a TIBCO Cloud account.  You can get started with a [free trial](https://www.tibco.com/products/tibco-cloud-events/sign-up) in 30 seconds.  
Launch a Cloud9 environment, an online IDE offered by AWS.  

[Cloud9 us-east-1](https://us-east-1.console.aws.amazon.com/cloud9/home/product#)  
[Cloud9 us-east-2](https://us-east-2.console.aws.amazon.com/cloud9/home/product#)  
[Cloud9 us-west-2](https://us-west-2.console.aws.amazon.com/cloud9/home/product#)  
  
  
Prepare the environment:  
```bash
git clone https://github.com/wkarasz/keys2cloud2019.git
cd keys2cloud2019/scripts
./prep.sh
```

Open the TIBCO Cloud Events CLI tool:
```bash
tce-cli
```
  
Enter your credentials( tce:login)  
Deploy the TCE project (tce:push-application default /home/ec2-user/environment/keys2cloud2019/project/TNCDemoWJK.ear)  

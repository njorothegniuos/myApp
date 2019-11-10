node{
     stage('SCM Checkout'){
         git credentialsId: 'git-creds', url: 'https://github.com/njorothegniuos/myApp.git'
     }
     stage('Mvn Package'){
       def mvnHome = tool name: 'maven', type: 'maven'
       def mvnCMD = "${mvnHome}/bin/mvn"
       sh label: '', script: 'mvn clean package'
     }
     stage('Build Docker Image'){
       sh label: '', script: 'docker build -t smburu2019/my-app:1.0.0 .'
     }
     stage('Push Docker Image'){
         withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
           sh "docker login -u smburu2019 -p ${dockerHubPwd}"
         }
         sh label: '', script: 'docker push smburu2019/my-app:1.0.0'
     }
}


--user permission to run docker commands
sudo usermod -a -G root jenkins
sudo service jenkins restart

node{
    stage("SCM Checkout"){
        git 'https://github.com/samkhan95/aegis_backend.git'
    }
    stage("Buildind the image"){
        sh '''cd device-management

        sudo docker build -t samad095/device-service:2 .'''
    }
    stage("Pushing the image on Docker Hub"){
        withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerHubPwd')]) {
            sh 'sudo docker login -u samad095 -p ${dockerHubPwd}'
        }
        sh 'sudo docker push samad095/device-service:2'
    }
}

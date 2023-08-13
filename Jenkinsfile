pipeline {

    agent any

    stages {
        stage("Build"){
            steps {
                sh 'echo selam dunya'
            }
        }

        stage("Test"){
            steps {
                sh 'echo selam dunya'
            }
        }

        stage('Build docker image') {
            steps {
                script {
                    sh "docker build -t abbas1997/testimage:${BUILD_ID} ."
                }
            }
        }

        stage('Push image to dockerHub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'docker-secret-pwd', variable: 'dockerHubPwd')]) {
                        sh "docker login -u abbas1997 -p ${dockerHubPwd}"
                    }
                    sh "docker push abbas1997/testimage:${BUILD_ID}"
                }
            }
        }

        stage("Pusho Nexus Server"){
            steps {
                sh 'echo selam dunya'
            }
        }

        stage("Deploy"){
            steps {
                sshagent(['146.190.123.148']) {
                    sh 'ssh -o StrictHostKeyChecking=no -l root 146.190.123.148 docker rm $(docker ps -aq) && docker run --name jenko${BUILD_ID} -p 80:80 abbas1997/testimage'
                    //sh 'docker run --name jenko -p 80:80 abbas1997/testimage'
                }
            }
        }
    }

}
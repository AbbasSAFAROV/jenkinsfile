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
                    withCredentials([string(credentialsId: 'dockerHubPwdSecret', variable: 'dockerHubPwdSecret')]) {
                        sh "docker login -u abbas1997 -p ${dockerHubPwdSecret}"
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
                sshagent(['ssh-server']) {
                    //sh 'ssh -o StrictHostKeyChecking=no -l root 146.190.123.148 docker run --name jenko${BUILD_ID} -p ${BUILD_ID}:80 abbas1997/petclinicapplication:0.1'
                    //sh 'ssh -o StrictHostKeyChecking=no -l root 24.199.119.158 docker run --name jenko${BUILD_ID} -d -p 8181:80 abbas1997/testimage:${BUILD_ID}'
                    sh 'ssh -o StrictHostKeyChecking=no -l root 24.199.119.158 docker run --name jenko${BUILD_ID} -d -p ${BUILD_ID}:8087 abbas1997/petclinicapplication:0.1'
                    //sh 'ssh -o StrictHostKeyChecking=no -l root 146.190.123.148 docker rm $(docker ps -aq) && docker run --name jenko${BUILD_ID} -p 80:80 abbas1997/testimage'
                    //sh 'docker run --name jenko -p 80:80 abbas1997/testimage'
                }
            }
        }
    }

}
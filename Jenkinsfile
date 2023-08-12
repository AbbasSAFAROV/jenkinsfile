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
                    sh 'docker build -t abbas1997/testimage .'
                }
            }
        }

        stage('Push image to dockerHub') {
            steps {
                script {
                    withCredentials([string(credentialsId: 'dockerhub-pwd', variable: 'dockerhub-passwd')]) {
                        sh 'docker login -u abbas1997 -p ${dockerHubPwd}'
                    }
                    sh 'docker push abbas1997/testImage'
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
                sh 'echo selam dunya'
            }
        }
    }

}
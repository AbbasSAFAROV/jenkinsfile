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
                    /**
                    def dockerHome = tool 'myDocker'
                    env.PATH = "${dockerHome}/bin:${env.PATH}"
                    **/
                    sh 'docker build -t abbas1997/testImage .'
                }
            }
        }

        stage("Pusho docker image to dockerhub.io"){
            steps {
                sh 'echo selam dunya'
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
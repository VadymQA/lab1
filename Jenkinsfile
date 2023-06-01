pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                
                git 'https://github.com/VadymQA/lab1'
            }
        }

        stage('Build Docker Image') {
            steps {
               
                script {
                    docker.build('lab1-zealous_gould-check_status')
                }
            }
        }

        stage('Run Docker Compose') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}
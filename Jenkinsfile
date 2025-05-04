pipeline {
    agent any

    stages {
        stage('Clone Repo') {
            steps {
                echo 'Cloning the repository...'
                // Jenkins will clone your repo automatically if configured in the project
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('frontend-app')
                }
            }
        }

        stage('Run with Docker Compose') {
            steps {
                sh 'docker-compose down || true'
                sh 'docker-compose up -d --build'
            }
        }
    }
}

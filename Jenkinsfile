pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                // Checkout code from your main branch
                git branch: 'main', url: 'https://github.com/swapnil0176/Realtime-App.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Building Docker image...'
                    docker.build('simple-html-app')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    echo 'Stopping old container if exists...'
                    sh 'docker stop simple-html-app || true'
                    sh 'docker rm simple-html-app || true'

                    echo 'Running new Docker container...'
                    sh 'docker run -d -p 80:80 --name simple-html-app simple-html-app'
                }
            }
        }
    }
}

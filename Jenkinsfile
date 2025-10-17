pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/swapnil0176/Realtime-App.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-html-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    docker.image('simple-html-app').run('-d -p 80:80')
                }
            }
        }
    }
}

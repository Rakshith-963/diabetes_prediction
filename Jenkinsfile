pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Rakshith-963/diabetes_prediction.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build('diabetes-ml-app')
                }
            }
        }
        stage('Run Docker Container') {
            steps {
                script {
                    dockerImage.run('-p 5000:5000')
                }
            }
        }
    }
}

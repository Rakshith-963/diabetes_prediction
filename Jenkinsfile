pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git branch: 'main', url: 'https://github.com/Rakshith-963/diabetes_prediction.git'
            }
        }
        stage('Build Docker Image') {
            steps {
                bat 'docker build -t diabetes-ml-app .'
            }
        }
        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 5000:5000 --name diabetes-ml-app diabetes-ml-app'
            }
        }
    }
}

pipeline {
    agent {
        node {
            label 'slave'
        }
    }
    stages {
        stage('build image') {
            steps {
                script {
                    sh 'docker build -t new .'
                }
            }
        }
        stage('push image') {
            steps {
                script {
                    sh 'sleep 10'
                }
            }
        }
    }
}

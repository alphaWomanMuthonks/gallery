pipeline {

    agent any

    stages {

        stage('Clone repository') {

            steps {
                git 'https://github.com/alphaWomanMuthonks/gallery.git'
            }
        }

        stage('Install Softwares') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'build code'
            }
        }

        stage('Test') {
            steps {
                sh 'npm test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'render deploy'
            }
        }
    }
}

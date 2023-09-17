pipeline {
    agent any
    tools {
        nodejs '20.6.1'
    }
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/alphaWomanMuthonks/gallery.git'
            }
        }

        stage('Install Softwares') {
            steps {
                sh 'npm install'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('Deploy to Render') {
            steps {
                sh 'node server.js'
            }
        }
    }
}


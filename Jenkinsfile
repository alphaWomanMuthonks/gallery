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
                script {
                    def testExitCode = sh(script: 'npm test', returnStatus: true)
                    if (testExitCode != 0) {
                        currentBuild.result = 'FAILURE' 
                        emailext(
                            to: 'joy.malanga@student.moringaschool.com',
                            subject: "Test failed",
                            body: 'Test failed. Please check the build log.',
                            attachLog: true
                        )
                        error('Tests failed.')
                    }
                }
            }


        stage('Run Application') {
            steps {
                sh 'node server.js'
            }
        }
    }
}


// pipeline {

//     agent any

//     stages {

//         stage('Clone repository') {

//             steps {
//                 git 'https://github.com/alphaWomanMuthonks/gallery.git'
//             }
//         }

//         stage('Install Softwares') {
//             steps {
//                 sh 'npm install -g npm'
//                 // sh 'npm install'
//             }
//         }

//         stage('Build') {
//             steps {
//                 sh 'build code'
//             }
//         }

//         stage('Test') {
//             steps {
//                 // sh 'npm test'
//                 sh 'node server.js'
//             }
//         }

//         stage('Deploy') {
//             steps {
//                 sh 'render deploy'
//             }
//         }
//     }
// }


// pipeline {
//     agent any
//     environment {
//         NODEJS_HOME = tool name: 'NodeJS', type: 'Tool'
//     }
//     stages {
//         stage('Clone repository') {
//             steps {
//                 git 'https://github.com/alphaWomanMuthonks/gallery.git'
//             }
//         }

//         stage('Install Node.js and npm') {
//             steps {
//                 script {
//                     def nodejsHome = tool name: 'NodeJS', type: 'Tool'
//                     def npmHome = "${nodejsHome}/bin"
//                     env.PATH = "${npmHome}:${env.PATH}"
//                 }
//             }
//         }

//         stage('Install npm packages') {
//             steps {
//                 sh 'npm install'
//             }
//         }

//         stage('Build') {
//             steps {
//                 sh 'build code'
//             }
//         }

//         stage('Test') {
//             steps {
//                 sh 'node server.js'
//             }
//         }

//         stage('Deploy') {
//             steps {
//                 sh 'render deploy'
//             }
//         }
//     }
// }



pipeline {
    agent {
        docker {
            image 'jenkins/node:lts'
        }
    }

    stages {
        stage('Clone repository') {
            steps {
                git 'https://github.com/alphaWomanMuthonks/gallery.git'
            }
        }

        stage('Install Softwares') {
            steps {
                sh 'npm install -g npm'
                sh 'npm install' // You can include this step if needed
            }
        }

        stage('Build') {
            steps {
                sh 'build code'
            }
        }

        stage('Test') {
            steps {
                // sh 'npm test'
                sh 'node server.js'
            }
        }

        stage('Deploy') {
            steps {
                sh 'render deploy'
            }
        }
    }
}


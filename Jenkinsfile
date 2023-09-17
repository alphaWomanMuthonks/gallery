// pipeline {

//     agent {
//         docker {
//             image 'jenkins/node:lts'
//         }
//     }

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


// pipeline {
//     agent {
//         docker {
//             image 'jenkins/node:lts'
//         }
//     }

//     stages {
//         stage('Clone repository') {
//             steps {
//                 git 'https://github.com/alphaWomanMuthonks/gallery.git'
//             }
//         }

//         stage('Install Software') {
//             steps {
//                 sh 'npm install -g npm'
//                 sh 'npm install' // You can include this step if needed
//             }
//         }

//         stage('Build') {
//             steps {
//                 sh 'build code'
//             }
//         }

//         stage('Test') {
//             steps {
//                 // You can choose to run npm test or node server.js here based on your needs.
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



pipeline {
    agent any

    stages {
        stage('Install Node.js and npm') {
            steps {
                // sh 'apt-get install nodejs'
                sh 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh'
                sh 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash'
                // sh 'source ~/.profile'
                sh 'nvm install v18.17.1'
            }
        }

        stage('Clone') {
            steps {
                git 'https://github.com/alphaWomanMuthonks/gallery.git'
            }
        }

        stage('Install Softwares') {
            steps {
                // sh 'npm install -g npm'
                sh 'npm install'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        stage('Deploy to Render') {
            steps {
                sh 'node server.js'
            }
        }

        stage('Make a Change') {
            steps {
                sh 'echo "MILESTONE 2" > index.html'
                git 'commit -am "Add MILESTONE 2" && git push'
            }
        }
    }
}

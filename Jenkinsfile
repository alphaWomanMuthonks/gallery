pipeline { 
    
  agent any
  
  stages {
      
    stage('clone repository') {
        
      steps {
          
        git 'https://github.com/alphaWomanMuthonks/gallery.git'
      }
    }
    
    stage('install Softwares') {
        
      steps {
          
        sh 'npm install'
        
      }
    }
    stage('build') {
        
      steps {
          
        sh 'build code'
        
      }
    }
        
    stage('test') {
        
      steps {
          
        sh 'npm test'
        
      }
    stage('deploy') {
        
      steps {
          
        sh 'render deploy'
        
      }
    }
  }
        
}

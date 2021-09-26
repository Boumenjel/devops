pipeline {
    agent any

    stages {
    
        stage('Build') {
            steps {
                git url: 'https://github.com/Boumenjel/devops.git'
                bat "./mvnw clean install"
            }
        }
        stage('Test') {
            steps {
                bat "./mvnw test"
            }
          }
      }
}

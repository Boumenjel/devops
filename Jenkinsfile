pipeline {
    agent any

    stages {
    
        stage('Build') {
            steps {
                git url: 'https://github.com/Boumenjel/devops.git'
                sh "mvn clean verify"
            }
        }
        stage('Test') {
            steps {
                sh "mvn test"
            }
          }
      }
}

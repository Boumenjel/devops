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
            post {
                always {
                    junit '**/target/surefire-reports/TEST-*.xml'
                }
            }
          }
        stage('Deploy') { 
            steps {
                // 
            }
        }
         stage('Build Image Docker') {
                      steps {
                          bat "docker build -t  spring-boot-docker.war ."
                      }
                  }
      }
      post {
        always {
            cleanWs()
        }
    }
}

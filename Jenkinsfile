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
         stage('Build Image Docker') {
                      steps {
                          bat "docker build -t C:\Users\Wael Boumenjel\Desktop\devops\demo\spring-boot-docker ."
                      }
                  }
      }
      post {
        always {
            cleanWs()
        }
    }
}

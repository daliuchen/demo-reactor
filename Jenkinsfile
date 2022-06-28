pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /home/lighthouse/jekins.m2:/root/.m2'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'mvn  clean package -Dmaven.test.skip=true'
      }
    }

    stage('Test') {
      post {
        always {
          junit 'target/surefire-reports/*.xml'
        }

      }
      steps {
        sh 'mvn test'
      }
    }

    stage('input') {
      steps {
        input 'input '
        sh 'mvn -version'
      }
    }

  }
}
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
        sh 'mvn -version'
        echo 'build success'
      }
    }

    stage('Test') {
      steps {
            sh 'mvn test'
            echo 'test success'
         }
      post {
        always {
           echo 'always-0'
           echo 'always-1'
        }

      }
    }

    stage('input') {
      steps {
        input 'input message'
        sh 'mvn -version'
      }
    }
  }
}
pipeline {
  agent {
    docker {
      image 'maven:3-alpine'
      args '-v /home/lighthouse/jekins/.m2:/root/.m2'
    }
  }

  stages {
    stage('style') {
      steps {
        sh 'make style'
      }
    }
    stage('Test') {
      steps {
           sh 'make test'
         }
      post {
        always {
           echo '测试stop的always操作'
        }

      }
    }

    stage('deploy') {
      steps {
        input 'input message'
        sh 'mvn -version'
      }
    }
  }
}
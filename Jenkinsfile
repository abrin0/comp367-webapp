pipeline {
  agent any

  stages {
    stage('Checkout') {
      steps { checkout scm }
    }

    stage('Build') {
      steps { bat 'mvn -B clean package' }
    }

    stage('Archive WAR') {
      steps { archiveArtifacts artifacts: 'target/*.war', fingerprint: true }
    }
  }
}
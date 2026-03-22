pipeline {
    agent any

    tools {
        maven "Maven3"
    }

    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPWD')
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Maven Project') {
            steps {
                bat 'mvn -B clean install'
            }
        }

        stage('Docker Login') {
            steps {
                bat 'docker login -u abrinsaji -p %DOCKERHUB_PWD%'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t abrinsaji/comp367-webapp:1.0 .'
            }
        }

        stage('Docker Push') {
            steps {
                bat 'docker push abrinsaji/comp367-webapp:1.0'
            }
        }

        stage('Archive WAR') {
            steps {
                archiveArtifacts artifacts: 'target/*.war', fingerprint: true
            }
        }
    }
}
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('Run bash') {
            steps {
               sh '''#!/bin/bash
                 echo "hello world it's a bash script"
                '''
                sh 'echo "Show me the workspace"'
                sh 'pwd'
            }
        }
    }
}

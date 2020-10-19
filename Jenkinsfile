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
                 echo "hello world" 
                 sh 'chmod +x /home/ec2-user/script.sh'
                 sh '/home/ec-user/script.sh'
                '''
            }
        }
    }
}

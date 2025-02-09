pipeline {
    // job akan dijalankan pada agent devops1-rafi
    agent { 
        node {
            label 'devops1-rafi' 
            
        } 
    }

    // proses sdlc
    stages {
        // proses build images
        stage('Build images') {
            steps {
                sh 'docker compose build'
            }
        }
        // proses deploy apps
        stage('Deploy Apps') {
            steps {
                sh 'docker compose up -d'
            }
        }
        // proses publish images
        stage('Publish image') {
            steps {
                sh 'docker compose push'
            }
        }
    }
}
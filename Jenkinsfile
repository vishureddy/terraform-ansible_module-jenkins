pipeline {
    agent any
    stages {
        stage('Create s3 bucket for storing tf state files') {
            steps {
                sh 'ansible-playbook s3-bucket.yaml'
            }
        }
        stage('Terraform init and apply') {
            steps {
                sh 'terraform init'
                sh 'ansible-playbook terraform.yaml -e app_env=dev'
            }
        }

    }
}
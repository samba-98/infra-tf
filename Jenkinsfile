pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('google-sa-key')
        // GIT_TOKEN = credentails('git-token')
    }

    stages {
        stage('Checkout') {
            steps {
                // Use credentials and correct branch
                git branch: 'main', url: 'https://github.com/samba-98/infra-tf.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }
        stage('Manual Approval') {
            steps {
                // Manual approval stage
                input message: 'Do you want to proceed with Terraform Apply?', ok: 'Approve'
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }
    }
}

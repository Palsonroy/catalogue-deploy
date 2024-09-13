    pipeline {
        agent {
        node {
            label 'AGENT'
            
        }
    }
    // environment { 
    //         packageVersion = ''
    //         nexusUrl = '172.31.80.240:8081'
    //     }
    options {
        // Timeout counter starts AFTER agent is allocated
        timeout(time: 1 , unit: 'HOURS')
        disableConcurrentBuilds()
    }
     parameters {
        string(name: 'version', defaultValue: '1.0.0', description: 'What is the artifact version?')
        string(name: 'environment', defaultValue: 'dev', description: 'What is the environment?')
    
    }
    
    stages {
        stage('Print version') {
             steps {
                sh """
                    echo "version: ${params.version}"
                    echo "environment: ${params.environment}"
                """
                }
            }
            stage('Init') {
                steps {
                    sh """
                        cd terraform
                        terraform init --backend-config=${params.environment}/backend.tf
                        -reconfigure
                    """
                    }
                }

        
        }

        post { 
            always { 
                echo 'I will always say Hello again!'
                deleteDir()
            }
        }
    }
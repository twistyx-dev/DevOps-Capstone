pipeline {
    agent any
        stages {
            stage('Install dependencies') {
                steps {
                    sh '''make setup
                          make install
                    '''
                }
            }
            stage('Linting') {
                steps {
                    sh 'make lint'
                }
            }
            stage('Build') {
                steps {
                    script {
                        dockerImage = docker.build registry + ":predict"
                    }
                }
            }
            stage('Upload to dockerhub') {
                steps {
                    script {
                        docker.withRegistry( '', registryCredential ) {
                        dockerImage.push()
                        }
                    }

                }
            }
            stage('Deployment') {
                steps {
                    sh 'aws eks --region ap-south-1 update-kubeconfig --name capstone'
                    sh 'kubectl apply -f Deployment/Deployment.yml'
                    sh 'kubectl get all'
                }
            }
            stage('Cleaning up') {
                steps {
                    echo 'Cleaning up...'
                    sh 'docker system prune'
                }
            }

        }
        environment {
            registry = 'twi5tyx/capstone'
            registryCredential = 'dockerhub'
            dockerImage = ''
        }
}

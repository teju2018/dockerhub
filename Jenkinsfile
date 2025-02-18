pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS = 'docker-credentials'  // Name of the Docker Hub credential in Jenkins
        // GIT_CREDENTIALS = 'github-credentials'  // Name of the GitHub credential in Jenkins
    
    }

   stages {
    //     stage('Checkout') {
    //         steps {
    //             git credentialsId: "${GIT_CREDENTIALS}", url: 'https://github.com/your-username/your-repo.git', branch: 'master'
    //         }
    //     }

        stage('Login to Docker Hub') {
            steps {
                script {
                    // Login to Docker Hub using credentials stored in Jenkins
                    docker.withRegistry('', "${DOCKER_CREDENTIALS}") {
                        echo 'Logged in to Docker Hub'
                    }
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image using the Dockerfile from the repo
                    docker.build('xyz673/web-application1')
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    // Push the built image to Docker Hub
                    docker.push('xyz673/web-application1')
                }
            }
        }
    }
}

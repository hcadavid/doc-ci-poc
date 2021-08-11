pipeline {
    agent {
        dockerfile {
          filename "Dockerfile"
          args "-u root" //needed to get around permission issues
        }
    }
    environment {
        SPHINX_DIR  = './'
        BUILD_DIR   = './build'
        SOURCE_DIR  = '.'
        DEPLOY_HOST = 'deployer@www.example.com:/path/to/docs/'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                // virtualenv may not be necessary with root,
                // but I still think it's a good idea.
                sh '''                   
                   pip install -r ./reqs.txt
                '''
            }
        }
        stage('Build') {
            steps {
                sh '''    
                   rm -rf ${BUILD_DIR}
                   sphinx-build source build
                '''
            }
            post {
                failure {
                   
                }
            }
        }
    }
}

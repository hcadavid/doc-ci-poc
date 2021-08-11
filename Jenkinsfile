pipeline {
    agent {
        dockerfile {
          filename "Dockerfile"
          args "-u root -v /tmp:/tmp" //needed to get around permission issues
        }
    }
    environment {
        SPHINX_DIR  = './'
        BUILD_DIR   = '/tmp/html'
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
                   rm ./sphinx-build.log
                   sphinx-build  -q -w ./sphinx-build.log \
                   -b html source ${BUILD_DIR}
                '''
            }
            post {
                failure {
                   sh 'echo TODO'
                }
            }
        }
    }
}

pipeline {
    agent {
        dockerfile {
          filename "Dockerfile"
          args "-u root -v /tmp:/tmp" //needed to get around permission issues
        }
    }
    environment {
        SPHINX_DIR  = '.'
        BUILD_DIR   = './built'
        SOURCE_DIR  = '.'
        DEPLOY_HOST = 'deployer@www.example.com:/path/to/docs/'
    }
    stages {
        stage('Install Dependencies') {
            steps {
                // virtualenv may not be necessary with root,
                // but I still think it's a good idea.
                sh '''
                   mkdir /pyvenv
                   cd /pyvenv
                   python3.9 -m venv .
                   source ./bin/activate
                   pip install -r ./reqs.txt
                '''
            }
        }
        stage('Build') {
            steps {
                // clear out old files
                //sh 'rm -rf ${BUILD_DIR}'
                //sh 'rm -f ${SPHINX_DIR}/sphinx-build.log'

                sh '''    
                   cd /pyvenv
                   source ./bin/activate
                   make html
                '''
            }
            post {
                failure {
                    sh 'cat ${SPHINX_DIR}/sphinx-build.log'
                }
            }
        }
    }
}

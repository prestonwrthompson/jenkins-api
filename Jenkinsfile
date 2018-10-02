pipeline {
    agent { docker { image 'bash:latest' } }
    stages {
        stage('Run') {
            steps {
                sh './jobs/job2.sh "from jenkinsfile"'
            }
        }
    }
}

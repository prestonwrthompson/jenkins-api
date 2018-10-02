pipeline {
    stages {
        stage('Clone') {
            checkout scm
        }
        stage('Run') {
            sh './jobs/job2.sh "from jenkinsfile"'
        }
    }
}

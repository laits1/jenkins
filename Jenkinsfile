pipeline {
  agent any
  
  environment {
    GIT_URL = "https://github.com/laits1/jenkins.git"
  }

  stages {
    stage('Pull') {
      steps {
        git(url: "${GIT_URL}", branch: "master", changelog: true, poll: true)
        ls
      }
    }
  }
i}

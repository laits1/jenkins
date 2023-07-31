pipeline {
  agent any

  environment {
    GIT_URL = "https://github.com/laits1/jenkins.git"
  }

  triggers {
    // 코드 변경을 감지하는 블록, 매 1분마다 (cron 표현식: * * * * *)
    pollSCM('* * * * *')
  }

  stages {
    stage('Pull') {
      steps {
        script {
          // 자격증명 정보를 포함하여 Git pull 실행
          withCredentials([usernamePassword(credentialsId: 'YOUR_CREDENTIALS_ID', usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD')]) {
            // git pull 옵션 지정하여 브랜치 상태를 해결
            sh 'git fetch'
            sh 'git pull --rebase'
          }
        }
      }
    }
    // 추가적인 파이프라인 단계들을 정의할 수 있습니다.
  }
}

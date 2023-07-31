pipeline {
  agent any

  environment {
    GIT_URL = "https://github.com/yourusername/yourrepository.git"
  }

  triggers {
    // 코드 변경을 감지하는 블록, 매 1분마다 (cron 표현식: * * * * *)
    pollSCM('* * * * *')
  }

  stages {
    stage('Pull') {
      steps {
        git(url: "${GIT_URL}", branch: "master", changelog: true)
      }
    }
    // 추가적인 파이프라인 단계들을 정의할 수 있습니다.
  }
}

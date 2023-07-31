pipeline {
  agent any

  environment {
    GIT_URL = "https://github.com/laits1/jenkins.git"
  }

  triggers {
    // 코드 변경을 감지하는 블록
    pollSCM('* * * * *') // 매 분마다 변경을 감지합니다.
  }

  stages {
    stage('Pull') {
      steps {
        script {
          // 이전 빌드와 현재 빌드 사이의 변경사항 확인
          def changeLog = currentBuild.changeSets[0].items
          if (changeLog) {
            // 변경사항이 있을 때만 Git pull 실행
            echo "Changes detected. Pulling from ${GIT_URL}"
            git(url: "${GIT_URL}", branch: "master", changelog: true)
          } else {
            echo "No changes detected."
          }
        }
      }
    }
    // 추가적인 파이프라인 단계들을 정의할 수 있습니다.
  }
}

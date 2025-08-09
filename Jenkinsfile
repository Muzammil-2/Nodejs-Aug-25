pipeline {
    node any
    environment{
        SCANNER_HOME = tool 'sonar-scanner'
        BUILD_NUMBER = buildNumber
        Image_Name = quadrimuzammil
        App        = helloworld

       }
    tools {
        nodejs
    }
    stages{
        stage(Checkout_Codes){
        steps{
            git: clone https://---
        }
        }
      stage ('SonarQube'){
        steps{
         scripts{
               $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=NodeJS-Project \
                            -Dsonar.projectKey=NodeJS-Project
         }
        }
      }
     stage('build_image'){
        steps{
            scripts{
                docker build -t  ${Image_Name}/${App}:${BUILD_NUMBER} .
            }
        }
     }
         stage('docker_push'){
        steps{
            scripts{
                docker push  ${Image_Name}/${App}:${BUILD_NUMBER} .
            }
        }
     }
   
    }
}
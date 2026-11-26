pipeline{
    agent any
    stages{
        stage("Execute Dockerfile"){
            steps{
                sh 'docker build -t springboot-project:v1 .'
            }
        }
        stage("creating container"){  
            steps{
                sh 'docker run -d -p 9090:9090 springboot-project:v1'
            }
        }
    }
    post{
        success{
            emailext(
                to: 'jeevan23jeeva@gmail.com, siddardha070@gmail.com',
                subject: 'springboot project',
                body: 'http://172.28.87.7:9090'
                )
        }
    }
}

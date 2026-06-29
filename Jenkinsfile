pipeline {
    agent none

    stages {
        stage('Build') {
            agent {
                dockerfile {
                    filename 'Dockerfile.build'
                }
            }
            steps {
                echo '=== CENÁRIO 1/4: Build realizado com sucesso no container Docker! ==='
                sh 'npm install'
            }
        }

        stage('Testes') {
            agent {
                dockerfile {
                    filename 'Dockerfile.test'
                }
            }
            steps {
                echo '=== Executando testes no container Docker ==='
                sh 'npm test'
            }
        }
    }

    triggers {
        cron('*/5 * * * *')
    }

    post {
        success {
            echo 'CENÁRIO 1/4: Build e testes executados com sucesso em containers Docker!'
        }
        unstable {
            echo 'CENÁRIO 3: Build foi instável - falha nos testes detectada.'
        }
        failure {
            echo 'CENÁRIO 2: Erro no processo de compilação/build no container Docker.'
        }
    }
}

pipeline {
    agent none

    stages {
        stage('Build') {
            agent {
                dockerfile {
                    filename 'Dockerfile.build'
                    label 'docker'
                }
            }
            steps {
                echo '=== CENÁRIO 1/4: Build realizado com sucesso no container Docker! ==='
                sh 'node --version && npm --version'
            }
        }

        stage('Testes') {
            agent {
                dockerfile {
                    filename 'Dockerfile.test'
                    label 'docker'
                }
            }
            steps {
                echo '=== Executando testes no container Docker ==='
                sh 'npm test'
            }
        }
    }

    triggers {
        cron('0 2 * * *')
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

pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build: Instalando dependências no container...'
                script {
                    // Monta a imagem de compilação
                    docker.build('build-image', '-f Dockerfile.build .')
                }
            }
        }

        stage('Testes') {
            steps {
                echo 'Executando testes no container...'
                script {
                    // Monta a imagem de testes
                    def testImage = docker.build('test-image', '-f Dockerfile.test .')
                    
                    // Executa os testes dentro do container.
                    // ATENÇÃO: Se você usa Windows, mantenha "bat". 
                    // Se você estiver rodando o Jenkins no Linux/Mac, troque "bat" por "sh".
                    sh "docker run --rm test-image npm test"
                }
            }
        }
    }

    post {
        success {
            echo ' CENÁRIO 1: Build e testes finalizados com sucesso!'
        }
        unstable {
            echo ' CENÁRIO 3: Build foi instável (falha nos testes).'
        }
        failure {
            echo ' CENÁRIO 2: Erro no processo de compilação/build.'
        }
    }
}

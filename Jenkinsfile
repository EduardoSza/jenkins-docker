pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Build: Instalando dependências do Node.js...'
                sh 'npm installllll'
            }
        }

        stage('Testes') {
            steps {
                echo 'Executando testes...'
                sh 'npm test'
            }
        }
    }

    post {
        success {
            echo 'CENÁRIO 1: Build e testes finalizados com sucesso!'
        }
        unstable {
            echo 'CENÁRIO 3: Build foi instável (falha nos testes).'
        }
        failure {
            echo 'CENÁRIO 2: Erro no processo de compilação/build.'
        }
    }
}

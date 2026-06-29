#!/bin/bash
# Cenário 2: Causar falha no build
# Introduz um erro de sintaxe no código

echo "=== Injetando erro de sintaxe para simular falha no build ==="
echo "functionQuebrada(" >> fahrenheitToCelcius.js
echo ""
echo "Commitando e enviando para o GitHub..."
git add fahrenheitToCelcius.js
git commit -m "[Cenario 2] Erro de sintaxe intencional para simular falha no build"
git push
echo ""
echo "=== Pronto! Execute o job manualmente no Jenkins ==="
echo "O build deve falhar no container Docker durante a compilação."

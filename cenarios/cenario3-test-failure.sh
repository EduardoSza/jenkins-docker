#!/bin/bash
# Cenário 3: Causar falha nos testes (build instável)
# Altera a função fahrenheitToCelsius para retornar valor errado

echo "=== Alterando método para causar falha nos testes ==="
cat > fahrenheitToCelcius.js << 'EOF'

function converterFahrenheitParaCelsius(fahrenheit) {
  if (typeof fahrenheit !== "number") {
    throw new Error("A entrada deve ser um número.");
  }
  return ((fahrenheit - 32) * 5) / 9 + 10;
}

module.exports = converterFahrenheitParaCelsius;
EOF

echo ""
echo "Commitando e enviando para o GitHub..."
git add fahrenheitToCelcius.js
git commit -m "[Cenario 3] Alteracao intencional para causar falha nos testes"
git push
echo ""
echo "=== Pronto! Execute o job manualmente no Jenkins ==="
echo "O build deve ser bem-sucedido, mas os testes devem falhar (build instável)."

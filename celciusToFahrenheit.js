function converterCelsiusParaFahrenheit(celsius) {
  if (typeof celsius !== "number") {
    throw new Error("A entrada deve ser um número.");
  }
  return (celsius * 9) / 5 + 32;
}

module.exports = converterCelsiusParaFahrenheit;

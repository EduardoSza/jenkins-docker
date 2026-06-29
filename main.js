const fahrenheitToCelsius = require('./fahrenheitToCelcius.js');
const celsiusToFahrenheit = require('./celciusToFahrenheit.js');

console.log('=== Laboratório de Jenkins com Docker ===');
console.log('Conversões de Temperatura');
console.log('');
console.log(`100°C -> ${celsiusToFahrenheit(100).toFixed(1)}°F`);
console.log(`32°F  -> ${fahrenheitToCelsius(32).toFixed(1)}°C`);
console.log('');
console.log('Build e testes em containers Docker isolados!');

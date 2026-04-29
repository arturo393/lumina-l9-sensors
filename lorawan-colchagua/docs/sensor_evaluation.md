# Evaluación de Sensores Sonar/Radar LoRaWAN para Canales (Estudio de Casos)

Dado el problema explícito con la naturaleza (arañas, humedad, tierra) y el fallo del proveedor anterior con conexiones 5G en placas Arduino, la medición debe ser obligatoriamente **Sin Contacto (Non-Contact)**. 

## La Tecnología A Aprobar: Sonar o Radar
La solución debe medir desde arriba (ej. desde un puente cruzando el canal) disparando ondas hacia la superficie del agua.
1. **Sonar (Ultrasónico)**: Dispara sonido. Muy barato, pero la humedad densa o telarañas gruesas justo bajo el sensor pueden crear "falsos ecos".
2. **Radar (Microondas)**: Dispara ondas de radio de alta frecuencia (60GHz - W-Band). Ignora la neblina, lluvia ligera y la mayoría de las telarañas. Es el estándar "Iron-Clad" para aplicaciones críticas de facturación.

---

## 🔝 Opción 1 (Recomendación Principal): Milesight EM410-RDL (Radar de Nivel)

Es el estándar de la industria para lo que el cliente busca.

- **Tecnología**: Radar de Onda Continua (FMCW) en banda W (60GHz).
- **Ventaja contra Arañas**: Su onda de radar penetra polvo fino y telarañas sin rebotar, rebotando solo en el agua (superficie densa).
- **Rango**: Mide desde 30 centímetros hasta 12 metros de distancia (ideal para puentes sobre canales).
- **Robustez (Carcasa/Cases)**: Viene sellado de fábrica en resina con grado militar IP67. La batería interna de 19000mAh no está expuesta a cables que los roedores puedan morder.
- **Telecomunicaciones**: Usa LoRaWAN. Su señal (Bandas US915 / AU915 para Chile) puede cruzar hasta 15km campo abierto hacia el Starlink.

## ⚖️ Opción 2 (Equilibrada/Económica): Dragino LDDS20 / LDDS75 (Sonar Ultrasónico)

Ideal para canales más pequeños o si el cliente quiere probar la tecnología antes de invertir fuerte.

- **Tecnología**: Ultrasónica. El choque del sonido contra el agua calcula la distancia.
- **Debilidad contra Arañas**: Si una araña grande teje justo en el cono acústico, el sensor podría medir a la araña en vez del agua. Requiere un ducto o visera de protección (PVC) simple.
- **Rango**: LDDS20 mide hasta 2 metros. LDDS75 mide hasta 7.5 metros.
- **Carcasa**: Grado industrial estándar (IP66). Sonda ultrasónica sumergible (IP68). Muy resistente al agua.
- **Integración**: Funciona perfectamente con The Things Stack o AWS IoT.

## 🛰️ Resumen de Propuesta de Hardware:
- **Red Troncal**: 2 Kits Starlink Standard / High Performance.
- **Gateways**: 2 x Milesight UG67 LoRaWAN (IP67, Outdoor, Edge NS).
- **Sensores de Medición Crítica (Facturación)**: Milesight EM410-RDL.
- **Sensores Auxiliares (Monitoreo General)**: Dragino LDDS75.

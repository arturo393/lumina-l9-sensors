# Cuestionario Inicial para el Cliente (Proyecto Canales Colchagua)

Para garantizar que la nueva arquitectura satelital (Starlink + LoRaWAN + AWS) sea 100% exitosa y evitar los problemas del proveedor anterior, necesitamos levantar la siguiente información:

## 1. Entorno Físico y Cobertura (Gateways y Starlink)
- **Ubicación de los 2 puntos Starlink**: ¿Hay energía eléctrica estable (220V) en esos 2 puntos o dependerán de paneles solares?
- **Distancia a los canales**: ¿A qué distancia máxima (en kilómetros o metros) estarán los sensores de medición respecto a los puntos donde irán las antenas Starlink? (Esto define qué antena LoRaWAN usar).
- **Línea de Vista**: ¿Hay cerros frondosos o quebradas profundas entre los canales y los puntos Starlink?

## 2. Los Canales y la Medición (Los Sensores)
- **Ancho y Profundidad del Canal**: ¿Cuál es la profundidad máxima y mínima típica del canal? (Vital para calibrar el radar/sonar).
- **Montaje**: ¿Existe un puente, viga o estructura metálica cruzando el canal donde podamos "colgar" el sensor Radar/Sonar mirando hacia abajo, a una distancia segura del agua (ej. 30 cm o más)?
- **Frecuencia de Medición**: ¿Cada cuánto tiempo necesitan enviar el nivel del caudal a AWS? (ej. cada 10 min, cada 30 min, cada hora). Esto impacta directamente la vida de la batería.

## 3. Integración y Cobro (AWS e IT)
- **Estructura de Base de Datos Actual**: Ya que tienen tablas en AWS para el cobro, ¿qué base de datos usan (ej. RDS, DynamoDB)? ¿Podemos obtener acceso/credenciales para inyectar directamente los nuevos datos allí?
- **Fórmula de Caudal**: Los sensores medirán "Nivel/Altura del agua". ¿El cliente ya tiene la fórmula matemática/curva de aforo para convertir "Altura (cm)" a "Caudal (Litros/segundo)" según la geometría de sus canales?
- **Dashboard Actual**: ¿Cómo visualizan hoy esos datos? (¿Tienen ya un software propio o desean que nosotros montemos un nuevo servidor EC2 con Grafana para la gestión operativa?).

## 4. Etapa 2: Control de Compuertas (Planificación Futura)
- **Tipo de Compuertas actualles**: ¿Tienen motores eléctricos actualmente, o las levantan a mano con volantes/manivelas?
- **Energía en las compuertas**: Para motorizarlas y controlarlas por LoRaWAN, ¿habrá energía solar u otra fuente en el punto exacto de la compuerta?

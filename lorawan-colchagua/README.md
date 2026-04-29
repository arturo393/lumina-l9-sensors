# LoRaWAN Colchagua - Sistema de Cobro y Monitoreo de Canales

Este proyecto implementa una solución industrial de grado (Carrier-Grade) para el monitoreo y facturación de caudal de agua en canales de viñedos de Colchagua, estructurada en múltiples etapas.

## Contexto y Problema
El sistema actual (proveedor anterior) utiliza placas Arduino con conexión 5G individual por sensor e instrumentos de contacto. Esto genera:
1.  **Fallas de Conectividad**: La red móvil (Entel/5G) es inestable en la zona de los canales.
2.  **Fallas Físicas**: Las telarañas, insectos y la naturaleza del canal bloquean los sensores físicos.
3.  **Gestión Manual**: Se requieren visitas presenciales para verificar el estado y los cobros manuales.

## Objetivos (La Nueva Solución)
1.  **Backhaul Satelital**: Uso de Antenas **Starlink** para garantizar internet ininterrumpido a la red local.
2.  **Red Local IoT**: Despliegue de Gateways **LoRaWAN**, eliminando la necesidad de chips 5G en cada sensor.
3.  **Sensores "Non-Contact"**: Implementación de tecnología de **Radar (Banda W)** y/o Sonar Ultrasónico. Al medir "desde el aire", se elimina el problema de las telarañas y bloqueos por basura.
4.  **Integración de Recaudación (AWS)**: Conexión directa del flujo de datos a las tablas AWS del cliente para la automatización del cobro mediante curvas de aforo.

## Fases de Implementación

### Etapa 1: Monitoreo y Facturación (Actual)
Instalación de la infraestructura satelital, despliegue de los sensores Radar/Sonar, y creación de los flujos de datos hacia AWS (vía AWS IoT Core) y un Dashboard operativo en Grafana.

### Etapa 2: Control y Actuación (Futuro)
Incorporación de actuadores LoRaWAN (Clase C) para motorizar y controlar remotamente la apertura y cierre de las compuertas de los canales, cerrando el ciclo de automatización.

## Estructura del Proyecto
- `docs/aws_architecture.md`: Diseño detallado del flujo en la nube AWS.
- `docs/sensor_evaluation.md`: Análisis técnico de sensores Radar vs Ultrasónicos.
- `docs/questions_for_client.md`: Cuestionario de viabilidad para terreno.
- `docs/lorawan_data_flow.md`: Explicación didáctica de la tecnología LoRa.
- `scripts/`: Próximamente - Scripts de simulación e integración MQTT/AWS.

## Arquitectura
Ver [docs/architecture.md](docs/architecture.md) para detalles del flujo de datos.

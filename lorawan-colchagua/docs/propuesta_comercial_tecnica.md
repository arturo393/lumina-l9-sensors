# Propuesta técnica de la arquitectura de hardware y conectividad

Esta propuesta presenta una solución de grado industrial para la monitorización de caudales y automatización de facturación hídrica, diseñada para reemplazar infraestructuras basadas en redes móviles inestables por una red local privada LoRaWAN de alta disponibilidad.

---

## Comparativa de Solución: Infraestructura Actual vs. Propuesta

| Dimensión | Infraestructura Actual | Solución Propuesta (Fase 1) |
| :--- | :--- | :--- |
| **Backhaul de Datos** | Red GSM/5G Individual (Inestable) | Starlink (Provisto por Cliente) + LoRaWAN |
| **Sensorización** | Mecánica de Contacto (Boyas/Arduino) | Telemetría Radar/Sonar (Sin Contacto) |
| **Mantenimiento** | Alta frecuencia por obstrucciones | Mantenimiento preventivo anual |
| **Integración** | Procesamiento Manual / Excel | Automatización AWS IoT Core / Billing |

---

## Alternativa 1: Configuración de Alta Disponibilidad (Recomendada)
**Basada en Ecosistema Milesight IoT**

Orientada a una operación crítica con cero tiempos de caída y precisión máxima para facturación.

### Especificaciones Técnicas y Equipamiento
- **Medición de Nivel**: Sensor Radar **EM410-RDL**. Utiliza tecnología radar de 60GHz, inmune a condensación, polvo y obstrucciones biológicas (telarañas). Rango hasta 12m.
- **Concentrador Base**: Gateway **UG67**. Grado industrial IP67, soporte para 8 canales simultáneos y integración nativa con el backhaul satelital del cliente.
- **Ventaja Operativa**: Configuración remota total y autonomía de batería garantizada de hasta 8-10 años.

### Diferenciadores de Grado Industrial (¿Por qué Milesight?)
Para una operación crítica hídrica, Milesight ofrece ventajas sobre soluciones estándar de entrada:
- **Configuración NFC**: Permite configurar, diagnosticar y actualizar los sensores vía smartphone sin necesidad de abrir el sellado estanco (IP67), eliminando el riesgo de ingreso de humedad por apertura en terreno.
- **Construcción UG67**: El Gateway posee un chasis metálico de alta resistencia térmica y protección contra rayos, superior a las carcasas de plástico comunes.
- **Ecosistema Integrado**: Gestión unificada de nodos y gateways que facilita el mantenimiento preventivo remoto.

### Inversión Estimada (Alternativa 1)
*Los valores incluyen adquisición de equipamiento e implementación profesional.*

- **Kit Base (Industrial)**: 45.0 UF
  - Incluye: 1 Gateway UG67 + 1 Sensor Radar EM410-RDL + Configuración Cloud.
- **Punto de Medición Adicional (Radar)**: 18.5 UF
  - Incluye: 1 Sensor Radar + Montaje y Calibración.

---

## Alternativa 2: Configuración Estándar / Escalable
**Basada en Ecosistema Dragino**

Orientada a una monitorización extendida con un equilibrio entre costo y capacidad industrial.

### Especificaciones Técnicas y Equipamiento
- **Medición de Nivel**: Sensor Ultrasónico **LDDS75/LDDS20**. Medición por ultrasonido con compensación de temperatura. Requiere protecciones físicas adicionales contra fauna.
- **Concentrador Base**: Gateway **LPS8v2**. Ideal para despliegues donde la ubicación del Gateway está protegida de la intemperie extrema.
- **Ventaja Operativa**: Menor inversión inicial, ideal para validación de puntos de medición secundarios.

### Inversión Estimada (Alternativa 2)
*Los valores incluyen adquisición de equipamiento e implementación profesional.*

- **Kit Base (Estándar)**: 28.0 UF
  - Incluye: 1 Gateway LPS8v2 + 1 Sensor Sonar LDDS75 + Configuración Cloud.
- **Punto de Medición Adicional (Sonar)**: 9.5 UF
  - Incluye: 1 Sensor Sonar + Montaje y Calibración.

---

## Cronograma de Ejecución y Metodología

El proyecto se estructura bajo una metodología de entrega por hitos (Milestone-based delivery):

1. **Hito 0: Comisionamiento y Staging (Entorno Controlado)**: 
   - Recepción de equipos, configuración de redes lógicas y validación de transmisión 48h antes de enviar a terreno.
   - *Costo: 8.0 UF (Fijo).*

2. **Hito 1: Integración de Infraestructura y Red Core**: Configuración de Gateways LoRaWAN sobre la red Starlink del cliente en terreno.
   - *Plazo: 5 días hábiles desde aprobación.*

3. **Hito 2: Despliegue de Nodos y Calibración**: Montaje físico de sensores y ajuste de curvas de aforo hídrico.
   - *Plazo: 7-10 días hábiles.*

4. **Hito 3: QA e Integración Billing AWS**: Pipeline de datos activo hacia las tablas de facturación del cliente y Dashboard de Gestión.
   - *Plazo: 5 días hábiles.*

---

## Consideraciones Generales
- **Infraestructura de Red**: La conexión a internet vía Starlink será provista por el cliente en los puntos de concentración definidos.
- **Servicios de Consultoría**: Incluye diseño de arquitectura cloud, programación de funciones Lambda para conversión de caudal y capacitación técnica.
- **Validez de la Propuesta**: 15 días calendario.

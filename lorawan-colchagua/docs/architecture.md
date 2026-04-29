# Arquitectura de Red LoRaWAN para Gestión de Caudales

Este documento detalla la topología de red y conectividad para el despliegue de telemetría de caudales en el Valle de Colchagua. La arquitectura se basa en una red privada LoRaWAN que utiliza el backhaul satelital existente provisto por el cliente.

## Componentes de la Red

### 1. Infraestructura de Transporte (Backhaul)
- **Concentración Satelital**: Uso de nodos **Starlink** (Propiedad del Cliente) distribuidos en puntos estratégicos para garantizar salida a internet de banda ancha en zonas remotas.
- **Interconexión**: Los Gateways LoRaWAN se conectarán físicamente (vía Ethernet) o inalámbricamente a los routers Starlink.

### 2. Capa de Concentración (Gateways)
- **Gateways Industriales**: Despliegue de concentradores con protección climática IP67 (ej. Milesight UG67).
- **Network Server Local**: Los Gateways gestionarán la autenticación y encriptación de los sensores en el borde (Edge Computing), optimizando el tráfico hacia la nube.

### 3. Capa de Sensores (End-Nodes)
- **Nodos de Telemetría**: Sensores Radar o Ultrasónicos LoRaWAN midiendo el nivel hídrico sin contacto directo con el flujo.
- **Frecuencia de Banda**: Operación en 915 MHz (AU915/US915) autorizada para uso industrial en Chile.

## Diagrama de Topología

```mermaid
        DB --> UI
    end

    class FS1,G buy;
    class AS,DB build;
    class UI implement;
```

## Comparativa: ¿Dónde poner el Network Server?

| Característica | **Network Server Integrado** (En el Gateway) | **Network Server Externo** (ChirpStack / TTN) |
| :--- | :--- | :--- |
| **Complejidad** | Baja (Plug & Play) | Media/Alta (Requiere servidor aparte) |
| **Costo Inicial** | $0 (Incluido en el hardware) | $ (Costo de servidor o licencia) |
| **Ideal para...** | **La Represa (Un solo sitio)** | Redes en toda la ciudad |
| **Internet** | Funciona aunque se caiga Internet (local) | Requiere Internet para que el NS 'vea' el Gateway |

---

Ver [docs/lorawan_data_flow.md](lorawan_data_flow.md) para el detalle técnico del viaje del dato.

## Componentes Clave
1.  **Sensores de Flujo**: Integrados con protectores para evitar telarañas, humedad y corrosión.
2.  **Tecnología LoRa**: Permite comunicación de larga distancia (varios km) con bajo consumo y sin necesidad de planes celulares individuales por sensor.
3.  **TimescaleDB**: Optimizado para datos de series temporales (flujo de agua).
4.  **Grafana**: Reemplaza los archivos Excel manuales con gráficos interactivos y alertas automáticas.

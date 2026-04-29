<style>
/* Propuesta Premium - CSS for Markdown PDF */
@import url('https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700&display=swap');

:root {
    --navy: #1a2a40;
    --slate: #4a5568;
    --accent: #2b6cb0;
    --border: #e2e8f0;
    --bg-light: #f8fafc;
}

body {
    font-family: 'Inter', -apple-system, system-ui, sans-serif !important;
    font-size: 11pt;
    line-height: 1.6;
    color: #1e293b;
    padding: 2mm;
}

h1 {
    color: var(--navy);
    font-size: 24pt;
    text-transform: uppercase;
    letter-spacing: 1px;
    border-bottom: 3px solid var(--navy);
    margin-bottom: 20pt;
    padding-bottom: 10pt;
}

h2 {
    color: var(--navy);
    font-size: 16pt;
    border-left: 5px solid var(--navy);
    padding-left: 10pt;
    margin-top: 30pt;
    margin-bottom: 15pt;
    text-transform: uppercase;
}

h3 {
    color: var(--accent);
    font-size: 13pt;
    margin-top: 20pt;
}

blockquote {
    border-left: 4px solid var(--accent);
    background: var(--bg-light);
    padding: 10pt 15pt;
    margin: 15pt 0;
    font-style: italic;
    color: var(--slate);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20pt 0;
}

th {
    background: var(--navy);
    color: white;
    text-align: left;
    padding: 10pt;
    font-weight: 600;
}

td {
    border-bottom: 1px solid var(--border);
    padding: 10pt;
}

tr:nth-child(even) {
    background: #fcfcfc;
}

img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    margin: 20pt 0;
}

hr {
    border: none;
    border-top: 1px solid var(--border);
    margin: 30pt 0;
}

/* Custom Grid for side-by-side content */
.comparison-container {
    display: flex;
    gap: 20pt;
    margin: 20pt 0;
}

.option-box {
    flex: 1;
    border: 1px solid var(--border);
    border-radius: 8px;
    padding: 15pt;
    background: white;
}

.price-tag {
    font-weight: 800;
    font-size: 14pt;
    color: var(--navy);
    margin-bottom: 10pt;
    display: block;
}

/* Page Break Utility */
.page-break {
    page-break-before: always;
}
</style>

# Propuesta Técnica: Telemetría de Caudales y Aguas
**Modernización de Canales - Valle de Colchagua**

---

### 📋 Resumen Ejecutivo
- **Referencia**: PR-COL-V2
- **Fecha**: 17 de Marzo, 2026
- **Vigencia**: 15 días corridos
- **Estado**: Final para Revisión

---

## 1. Esquema de Solución (Arquitectura)

![Esquema de Arquitectura](./architecture_diagram.png)

> **Nota Técnica**: El sistema utiliza sensores radar de alta frecuencia y gateways LoRaWAN privados, eliminando la dependencia de redes móviles (5G/GSM) inestables en terreno. Los datos viajan vía Starlink hacia la nube de AWS para su centralización y análisis.

---

## 2. Etapa 0: Laboratorio y Calibración (Marcha Blanca)

Antes de cualquier instalación en terreno, realizamos un proceso de **Marcha Blanca** en entorno controlado para garantizar cero fallas en el despliegue.

- **Actividades**: Configuración de llaves EUI, pruebas de estrés (48h), pre-calibración de offsets de sensores.
- **Inversión Etapa 0**: **8.0 UF** (Costo Fijo inicial).

---

## 3. Comparativa de Alternativas Tecnológicas

A continuación, se presentan las dos opciones de equipamiento según el nivel de criticidad de la operación.

<div class="comparison-container">

<div class="option-box">

### Opción A: Industrial Pro
**Orientada a Continuidad Operativa**
<span class="price-tag">45.0 UF (Equipamiento + Instalación)</span>
*Punto de medición adicional: 18.5 UF*

- **Sensor**: Radar EM410-RDL (60GHz).
- **Gateway**: Exterior UG67 (IP67).
- **Control**: Vía NFC (Sin abrir equipo).
- **Vida Útil**: 8-10 años (Batería).

</div>

<div class="option-box">

### Opción B: Estándar / Agnóstica
<span class="price-tag">28.0 UF (Equipamiento + Instalación)</span>
*Punto de medición adicional: 9.5 UF*

- **Sensor**: Ultrasónico LDDS75.
- **Gateway**: Compacto LPS8v2.
- **Protección**: Requiere resguardo físico.
- **Uso**: Ideal p/ validaciones rápidas.

</div>

</div>

<div class="page-break"></div>

## 4. Hoja de Ruta de Implementación (Roadmap)

| Hito | Actividad | Plazo Estimado |
| :--- | :--- | :--- |
| **HITO 0** | **Marcha Blanca**: Pruebas en laboratorio. | 2-3 días |
| **HITO 1** | **Red Core**: Instalación de Gateways en terreno. | 5 días hábiles |
| **HITO 2** | **Despliegue**: Montaje y calibración final. | 7 días hábiles |
| **HITO 3** | **Entrega y QA**: Validación de datos en AWS. | 5 días hábiles |

---

## 5. Consideraciones Finales
- **Infraestructura**: Starlink será provisto por la asociación/cliente.
- **Consultoría**: Incluye diseño de arquitectura y capacitación técnica inicial.
- **Impuestos**: Valores netos (No incluyen IVA).

---
*Documento generado para el Equipo de Ingeniería Consultora - Valle de Colchagua.*

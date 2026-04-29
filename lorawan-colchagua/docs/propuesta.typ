#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
  footer: context [
    #set text(8pt, gray)
    #grid(
      columns: (1fr, 1fr),
      [Ref: PR-COL-V2 | Actualizado: 17 Marzo, 2026],
      align(right)[Página #counter(page).display()]
    )
  ]
)

#set text(
  font: "Helvetica",
  size: 11pt,
  fill: rgb("#1e293b")
)

// Header
#block(width: 100%, stroke: (bottom: 2pt + rgb("#1a2a40")), inset: (bottom: 10pt))[
  #text(22pt, weight: "bold", fill: rgb("#1a2a40"))[PROPUESTA TÉCNICA] \
  #text(14pt, fill: rgb("#4a5568"))[Telemetría de Caudales y Aguas - Valle de Colchagua]
]

#v(1cm)

== 1. Esquema de Solución (Arquitectura)

#image("./architecture_diagram.png", width: 100%)

#quote(block: true)[
  El sistema utiliza telemetría radar de alta frecuencia para la medición de nivel sin contacto, transmitiendo vía LoRaWAN hacia la red Starlink para su centralización de datos.
]

== 2. Comparativa de Tecnologías

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  block(
    stroke: 0.5pt + gray,
    inset: 12pt,
    radius: 4pt,
    fill: rgb("#f8fafc")
  )[
    === Opción A: Industrial Pro
    *Inversión: 45.0 UF*
    - Radar EM410-RDL (60GHz)
    - Gateway UG67 (IP67)
    - Instalación y Marcha Blanca
  ],
  block(
    stroke: 0.5pt + gray,
    inset: 12pt,
    radius: 4pt
  )[
    === Opción B: Estándar
    *Inversión: 28.0 UF*
    - Ultrasónico LDDS75
    - Gateway LPS8v2
    - Ideal para validación
  ]
)

#pagebreak()

== 3. Hoja de Ruta de Implementación

#table(
  columns: (auto, 1fr, auto),
  inset: 10pt,
  align: horizon,
  fill: (x, y) => if y == 0 { rgb("#1a2a40") } else { none },
  [*Hito*], [*Actividad*], [*Plazo*],
  [HITO 0], [Marcha Blanca: Pruebas en lab], [2-3 días],
  [HITO 1], [Red Core: Gateways en terreno], [5 días],
  [HITO 2], [Despliegue: Montaje y Calibración], [7 días],
  [HITO 3], [Entrega Final: Validación Cloud], [5 días],
)

#v(1fr)
#align(center)[
  #text(9pt, gray)[Documento generado para el Equipo de Ingeniería Consultora.]
]

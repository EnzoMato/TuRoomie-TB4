# TuRoomie — TB4 | Pruebas de aceptación en Gherkin

Repositorio académico de **TechRoom Solutions**, correspondiente a **TuRoomie**, la solución de búsqueda de compañeros de vivienda y gestión de convivencia desarrollada para el curso **Especificación y Análisis de Requerimientos (1ASI0397)** de la **UPC**. Ciclo **202620**, NRC **16925**, Grupo **1**.

## Propósito

Documentar las pruebas de aceptación especificadas para el cuarto avance del Trabajo Final (TB4), siguiendo las historias de usuario y requisitos no funcionales del informe.

| Archivo | Cobertura | Escenarios especificados |
| --- | --- | ---: |
| [EP02_Busqueda_Matchmaking.feature](features/EP02_Busqueda_Matchmaking.feature) | EP-02: HU-003 a HU-007, Req02 y Req03 | 8 |
| [EP03_Acuerdos_Digitales.feature](features/EP03_Acuerdos_Digitales.feature) | EP-03: HU-008 a HU-011, Req04 y Req05 | 8 |
| [Requisitos_No_Funcionales.feature](features/Requisitos_No_Funcionales.feature) | HUNF-001 a HUNF-004, NF-01 a NF-04 | 5 |
| **Total** | | **21** |

Los archivos utilizan **Gherkin en español** (`# language: es`) con escenarios positivos, negativos y esquemas de escenario con datos de ejemplo.

## Evidencias relacionadas

- [Informe TF / TB4 en Google Docs](https://docs.google.com/document/d/1SmPhWOJNsphboD3kxoxJ-kCdUp4VRETk7PaWNxc51cc/edit)
- [Tablero Impact Map y Agile Product Roadmap en Miro](https://miro.com/app/board/uXjVELt9PAo=/)
- [Wireframes web y móvil en Figma Design](https://www.figma.com/design/fmjuD9jKvwwAR4lKUrxwmv)
- [Product Backlog en Trello](https://trello.com/b/EFoVfTtc/turoomie-product-backlog-tf-202620)

## Estado y limitaciones

**Estado: pruebas de aceptación especificadas, pendientes de automatización y ejecución.** Publicar archivos `.feature` no equivale a demostrar que los escenarios se ejecutaron ni que el sistema supera las pruebas.

Para convertirlas en pruebas ejecutables será necesario implementar definiciones de pasos (step definitions), preparar el ambiente y los datos de prueba, ejecutarlas y registrar fecha, responsable, resultado obtenido y evidencias. Las pruebas no funcionales necesitan además instrumentos adecuados de seguridad, usabilidad, rendimiento y disponibilidad.

Las cifras y datos usados en los escenarios son **datos sintéticos o criterios de validación definidos en el proyecto**, no resultados verificados de pruebas reales.

## Organización

```text
TuRoomie-TB4/
├── README.md
└── features/
    ├── EP02_Busqueda_Matchmaking.feature
    ├── EP03_Acuerdos_Digitales.feature
    └── Requisitos_No_Funcionales.feature
```

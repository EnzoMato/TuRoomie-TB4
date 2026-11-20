# language: es
# TuRoomie / EP-03 / HU-008 a HU-011
# Escenarios especificados; no son resultados de ejecución.
Característica: Acuerdos digitales de convivencia
  Como estudiantes emparejados
  Queremos formalizar reglas compartidas
  Para reducir conflictos durante el alquiler
  @HU-008 @Req04
  Escenario: Creación de acuerdo después de match confirmado
    Dado que Mateo y Micaela tienen un emparejamiento con estado "CONFIRMADO"
    Cuando Mateo selecciona "Generar acuerdo de convivencia"
    Entonces el sistema crea un acuerdo con estado "BORRADOR_EDITABLE"
    Y el acuerdo incluye a Mateo y Micaela como participantes
  @HU-008
  Escenario: Bloqueo de creación sin match confirmado
    Dado que un estudiante no tiene ningún emparejamiento confirmado
    Cuando abre el módulo de acuerdos digitales
    Entonces la opción "Generar acuerdo de convivencia" está deshabilitada
    Y no puede crear un acuerdo asociado a otra persona
  @HU-009 @Req04
  Escenario: Guardado exitoso de las reglas
    Dado que Mateo está editando un acuerdo en estado "BORRADOR_EDITABLE"
    Cuando registra reglas de limpieza, horarios, ruido, visitas y pagos
    Y selecciona "Guardar reglas"
    Entonces el sistema conserva las cinco categorías de reglas
    Y el acuerdo queda listo para revisión
  @HU-009
  Esquema del escenario: Datos de reglas obligatorias incompletos
    Dado que Mateo está editando un acuerdo en estado "BORRADOR_EDITABLE"
    Cuando intenta guardar el acuerdo con la regla <categoria> vacía
    Entonces el sistema impide continuar
    Y señala como obligatoria la categoría <categoria>
    Y mantiene el acuerdo editable
    Ejemplos:
      | categoria |
      | "ruido"   |
      | "pagos"   |
  @HU-010 @Req04
  Escenario: Revisión del acuerdo antes de la firma
    Dado que Micaela participa en un acuerdo configurado pendiente de firma
    Cuando abre el acuerdo para revisarlo
    Entonces puede consultar las reglas de limpieza, horarios, ruido, visitas y pagos
    Y visualiza la opción de aceptación y firma
  @HU-010
  Escenario: Solicitud de ajuste de reglas
    Dado que Micaela revisa un acuerdo pendiente de firma
    Cuando registra la observación "Modificar horario de silencio a las 21:00"
    Y selecciona "Solicitar cambio"
    Entonces el acuerdo vuelve al estado "BORRADOR_EDITABLE"
    Y Mateo recibe la solicitud con su observación
  @HU-011 @Req05
  Escenario: Formalización con las firmas de los dos participantes
    Dado que Mateo y Micaela participan en un acuerdo pendiente de firma
    Cuando Mateo acepta los términos y registra su firma
    Entonces el acuerdo permanece pendiente de la firma de Micaela
    Cuando Micaela acepta los términos y registra su firma
    Entonces el acuerdo cambia a "FORMALIZADO"
    Y contiene dos firmas y una fecha de formalización
  @HU-011
  Escenario: No formalizar acuerdo con una sola firma
    Dado que existe un acuerdo pendiente de firma entre Mateo y Micaela
    Cuando solo Mateo registra su firma
    Entonces la firma de Mateo queda registrada
    Pero el acuerdo no cambia al estado "FORMALIZADO"

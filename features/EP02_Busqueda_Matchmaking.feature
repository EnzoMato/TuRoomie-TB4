# language: es
# TuRoomie / EP-02 / HU-003 a HU-007
# Escenarios especificados; no son resultados de ejecución.
Característica: Búsqueda y emparejamiento de compañeros
  Como estudiante universitario
  Quiero encontrar y contactar compañeros compatibles
  Para compartir vivienda con menor riesgo de conflictos
  @HU-003 @Req02
  Escenario: Publicación válida de una habitación
    Dado que Mateo inició sesión como estudiante local
    Y accede al módulo de publicación de habitación
    Cuando registra el precio mensual de 950 soles, la ubicación "Santiago de Surco" y las reglas "No fumar; silencio después de las 23:00"
    Y confirma la publicación
    Entonces la plataforma crea el anuncio con estado "DISPONIBLE"
    Y el anuncio se muestra en la lista de habitaciones disponibles
  @HU-003
  Escenario: Publicación rechazada sin precio
    Dado que Mateo inició sesión como estudiante local
    Y accede al módulo de publicación de habitación
    Cuando intenta publicar una habitación en "Santiago de Surco" sin precio mensual
    Entonces el sistema impide la publicación
    Y solicita completar el campo "precio mensual"
  @HU-004 @Req02
  Escenario: Perfiles ordenados de mayor a menor compatibilidad
    Dado que Micaela completó el cuestionario de hábitos al 100 por ciento
    Y existen perfiles compatibles con porcentajes 94, 88 y 76
    Cuando ingresa a la sección de explorar compañeros
    Entonces visualiza 3 perfiles sugeridos
    Y los porcentajes aparecen en el orden 94, 88 y 76
  @HU-004
  Escenario: No hay candidatos compatibles
    Dado que Micaela completó el cuestionario de hábitos al 100 por ciento
    Y no existen candidatos compatibles en su zona
    Cuando ingresa a la sección de explorar compañeros
    Entonces visualiza una lista vacía
    Y el sistema informa que todavía no hay coincidencias disponibles
  @HU-005 @Req03
  Escenario: Envío de solicitud de emparejamiento
    Dado que Micaela visualiza el perfil sugerido de Mateo
    Cuando selecciona "Enviar solicitud de Match"
    Entonces se crea una solicitud con estado "PENDIENTE"
    Y Mateo la recibe en su bandeja
    Y Mateo recibe una notificación de nueva solicitud
  @HU-005
  Escenario: Cancelación de solicitud pendiente
    Dado que Micaela tiene una solicitud pendiente enviada a Mateo
    Cuando selecciona "Cancelar solicitud"
    Entonces la solicitud deja de estar disponible en la bandeja de Mateo
    Y no existe un match confirmado entre ambos
  @HU-006 @Req03
  Escenario: Aceptación de solicitud y acceso a contacto
    Dado que Mateo tiene una solicitud pendiente de Micaela
    Y los datos de contacto de ambos están ocultos antes del emparejamiento
    Cuando Mateo selecciona "Aceptar solicitud"
    Entonces la solicitud cambia a "ACEPTADA"
    Y se registra un match con estado "CONFIRMADO"
    Y ambos pueden visualizar sus datos de contacto autorizados
  @HU-007 @Req03
  Escenario: Rechazo de una solicitud de emparejamiento
    Dado que Mateo tiene una solicitud pendiente de otro estudiante
    Cuando Mateo selecciona "Rechazar solicitud"
    Entonces la solicitud cambia a "RECHAZADA"
    Y no se registra un match confirmado con ese estudiante

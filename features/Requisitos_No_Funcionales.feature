# language: es
# TuRoomie / HUNF-001 a HUNF-004 / Req NF-01 a NF-04
# Datos de ejemplo sintéticos. Escenarios pendientes de ejecución.
Característica: Atributos de calidad transversales de TuRoomie
  @HUNF-001 @NF-01 @seguridad
  Escenario: Protección de datos sensibles y contacto antes del match
    Dado que Micaela registró datos personales y respuestas de hábitos
    Y Mateo no tiene un match confirmado con Micaela
    Cuando se examina el registro de almacenamiento protegido
    Entonces los campos sensibles no aparecen almacenados en texto plano
    Cuando Mateo consulta el perfil de Micaela
    Entonces no puede visualizar su teléfono ni correo de contacto
  @HUNF-001 @NF-01
  Escenario: Contacto visible después de confirmación mutua
    Dado que Micaela y Mateo tienen perfiles registrados
    Y sus datos de contacto están ocultos
    Cuando ambos confirman el emparejamiento
    Entonces el match pasa a estado "CONFIRMADO"
    Y ambos pueden consultar los datos de contacto autorizados
  @HUNF-002 @NF-02 @usabilidad
  Esquema del escenario: Completar el cuestionario en menos de cinco minutos
    Dado que un estudiante nuevo usa la plataforma en <dispositivo>
    Cuando completa sin asistencia todas las preguntas obligatorias del cuestionario
    Entonces el progreso alcanza el 100 por ciento
    Y el tiempo total no supera los 300 segundos
    Y no ocurren errores bloqueantes de interfaz
    Ejemplos:
      | dispositivo |
      | "WEB"       |
      | "IOS"       |
      | "ANDROID"   |
  @HUNF-003 @NF-03 @rendimiento
  Escenario: Generar perfiles sugeridos dentro del límite de latencia
    Dado que existen 10000 perfiles activos de prueba en Santiago de Surco
    Y un estudiante registrado completó su cuestionario
    Cuando el estudiante envía el cuestionario y solicita recomendaciones
    Entonces se genera una respuesta con perfiles sugeridos
    Y el tiempo de respuesta observado es menor a 3 segundos
  @HUNF-004 @NF-04 @disponibilidad
  Escenario: Mantener disponibilidad comprometida bajo carga planificada
    Dado que existe una ventana de monitoreo definida de 720 horas
    Y se aplica una carga sintética de 5000 usuarios concurrentes
    Cuando se calcula la disponibilidad de los servicios críticos
    Entonces la disponibilidad del periodo es igual o superior a 99.9 por ciento
    Y el tiempo total de inactividad no supera 43.2 minutos

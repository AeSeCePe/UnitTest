Feature: Agendar Cita

Scenario: El usuario quiere visualizar los horarios disponibles del psicólogo
    Given un <usuario> registrado en el sistema
    And el <usuario> ha seleccionado al psicólogo de su preferencia
    When el <usuario> desea agendar una cita con el psicólogo
    Then el sistema muestra una amplia gama de horarios disponibles del psicólogo, indicando el día y hora disponibles

Examples:
    | Usuario registrado | Psicólogo seleccionado | Horarios disponibles |
    | Usuario1 | Psicólogo A | Lunes 10:00 AM, Martes 3:00 PM, Miércoles 11:30 AM, Jueves 5:00 PM, Viernes 9:00 AM |

Scenario: El usuario selecciona el horario de su cita con el psicólogo
    Given un <usuario> registrado en el sistema
    And el <usuario> ha seleccionado el horario de su preferencia
    When el <usuario> selecciona el horario deseado
    Then el sistema envía un correo de confirmación de la cita al <usuario> y al psicólogo

Examples:
    | Usuario registrado | Horario seleccionado |
    | Usuario1 | Martes 3:00 PM |
    | Usuario2 | Jueves 5:00 PM |
    | Usuario3 | Viernes 9:00 AM |

Scenario: El usuario intenta agendar una cita con un psicólogo reportado
    Given un <usuario> previamente reportó a un psicólogo
    When otro <usuario> intenta agendar una cita con el psicólogo reportado
    Then el sistema muestra un mensaje indicando que el psicólogo ha sido reportado y sugiere intentar con otro psicólogo

Examples:
    | Usuario reportado | Usuario intentando agendar cita |
    | Psicólogo A | Usuario1 |
    | Psicólogo B | Usuario2 |
    | Psicólogo C | Usuario3 |
Feature: Publicar plantilla de tratamiento

Scenario: El psicólogo desea publicar de manera pública una plantilla de tratamiento que ha creado
    Given el <psicologo> crea su plantilla de tratamiento
    And el <psicologo> completa los detalles que tiene su plantilla
    When el <psicologo> selecciona la opción publicar plantilla para todos
    Then el sistema guarda y publica la plantilla del <psicologo> para que esté disponible públicamente en la plataforma

  Examples:
    | nombre plantilla | mensaje                                            |
    | Plantilla A      | La plantilla A ha sido publicada exitosamente      |
    | Plantilla B      | La plantilla B ha sido publicada exitosamente      |
    | Plantilla C      | La plantilla C ha sido publicada exitosamente      |

Scenario: El psicólogo desea publicar de manera pública una plantilla de tratamiento que ha personalizado a partir de una plantilla existente
    Given el <psicologo> hace una copia de una plantilla existente
    And el <psicologo> edita los campos con información actualizada
    When el <psicologo> selecciona la opción publicar plantilla para todos
    Then el sistema guarda y publica la plantilla personalizada, manteniendo la atribución a la plantilla original

  Examples:
    | plantilla original | plantilla personalizada | mensaje                                                         |
    | Plantilla X        | Plantilla Personalizada | La plantilla personalizada basada en X ha sido publicada exitosamente |
    | Plantilla Y        | Plantilla Personalizada | La plantilla personalizada basada en Y ha sido publicada exitosamente |
    | Plantilla Z        | Plantilla Personalizada | La plantilla personalizada basada en Z ha sido publicada exitosamente |

Scenario: El psicólogo desea publicar de manera privada una plantilla de tratamiento
    Given el <psicologo> crea su plantilla de tratamiento
    And el <psicologo> completa los detalles que tiene su plantilla
    When el <psicologo> selecciona la opción publicar plantilla para mi
    Then el sistema guarda y publica la plantilla del <psicologo> de manera privada, asegurando que solo el <psicologo> tenga acceso a ella

  Examples:
    | nombre plantilla | mensaje                                            |
    | Plantilla D      | La plantilla D ha sido publicada de forma privada  |
    | Plantilla E      | La plantilla E ha sido publicada de forma privada  |
    | Plantilla F      | La plantilla F ha sido publicada de forma privada  |
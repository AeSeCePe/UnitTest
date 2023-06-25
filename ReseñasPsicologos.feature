Feature: Reseñas de los psicólogos

Scenario: El usuario desea leer reseñas generales de otros pacientes sobre un psicólogo específico
    Given el <usuario> selecciona a un psicólogo en particular
    When el <usuario> quiera leer las reseñas que tiene el psicólogo escogido
    Then el sistema le mostrará al <usuario> todas las reseñas que posee ese psicólogo

  Examples:
    | psicólogo seleccionado | reseñas                                                              |
    | Psicólogo A            | Reseña 1: Excelente profesional, lo recomiendo totalmente.           |
    |                        | Reseña 2: Me ayudó mucho a superar mis problemas emocionales.        |
    | Psicólogo B            | Reseña 1: No me sentí cómodo con el enfoque terapéutico utilizado.   |

Scenario: El usuario desea escribir su propia reseña sobre la experiencia con un psicólogo
    Given el <usuario> selecciona a un psicólogo en particular
    And el <usuario> haya tenido contacto previo con ese psicólogo
    When el <usuario> quiera escribir una reseña sobre el psicólogo
    Then el sistema creará un cuadro de texto para guardar y después publicar la reseña

  Examples:
    | psicólogo seleccionado | cuadro de texto para reseña |
    | Psicólogo C            | Cuadro de texto vacío     |

Scenario: El usuario desea editar su propia reseña sobre la experiencia con un psicólogo
    Given el <usuario> selecciona a un psicólogo en particular
    And el <usuario> haya escrito previamente una reseña
    When el <usuario> quiera editar su reseña sobre el psicólogo
    Then el sistema creará un cuadro de texto prellenado con la reseña existente del <usuario>, permitiéndole realizar las modificaciones deseadas

  Examples:
    | psicólogo seleccionado | cuadro de texto para reseña                                    |
    | Psicólogo D            | Cuadro de texto con la reseña existente del usuario prellenado |

Scenario: El usuario desea publicar su propia reseña actualizada sobre la experiencia con un psicólogo
    Given el <usuario> selecciona a un psicólogo en particular
    And el <usuario> haya escrito previamente una reseña
    When el <usuario> tenga la reseña actualizada con las modificaciones deseadas
    Then el sistema guardará y actualizará la reseña del <usuario> en el sistema

  Examples:
    | psicólogo seleccionado | reseña actualizada                                                   |
    | Psicólogo D            | La terapia con este psicólogo me ha sido de gran ayuda. Recomendado. |
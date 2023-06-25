Feature: Buscar psicologos

Scenario: El paciente quiere visualizar los psicólogos más recomendados
    Given el <paciente> se encuentra en la sección de "Buscar psicólogo"
    When el <paciente> desea filtrar la visualización por los psicólogos más recomendados
    Then el sistema muestra únicamente los psicólogos con las mejores puntuaciones de la aplicación

Examples:
    | rol | username | password | dashboard | Especialidad |
    | paciente | Paciente123 | pass123 | dashboard de paciente | |

Scenario: El paciente quiere visualizar los psicólogos menos recomendados
    Given el <paciente> se encuentra en la sección de "Buscar psicólogo"
    When el <paciente> desea filtrar la visualización por los psicólogos menos recomendados
    Then el sistema muestra únicamente los psicólogos con las peores puntuaciones de la aplicación

Examples:
    | rol | username | password | dashboard | Especialidad |
    | paciente | Paciente123 | pass123 | dashboard de paciente | |

Scenario: El paciente quiere filtrar los psicólogos por especialidad y encuentra psicólogos con esa especialidad
    Given el <paciente> se encuentra en la sección de Buscar psicólogo
    And el <paciente> filtra por una especialidad en particular
    When el <paciente> selecciona la especialidad de preferencia
    Then el sistema muestra únicamente los psicólogos con la especialidad escogida

Examples:
    | rol | username | password | dashboard | Nombre del psicólogo | Especialidad |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Sebastian Cachis | Psicología infantil |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Santiago Sterten | Terapia de pareja |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Madisson Beer | Psicoterapia cognitivo-conductual |

Scenario: El paciente quiere filtrar los psicólogos por especialidad y no encuentra psicólogos con esa especialidad
    Given el <paciente> se encuentra en la sección de "Buscar psicólogo"
    And el <paciente> filtra por una especialidad en particular
    When el <paciente> selecciona una especialidad y no hay psicólogos con esa especialidad
    Then el sistema muestra el mensaje Disculpa, por el momento no hay ningún psicólogo con esa especialidad

Examples:
    | rol | username | password | dashboard | Especialidad |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Psicología forense |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Psicología organizacional |

Scenario: El paciente desea buscar psicólogos cercanos a su ubicación actual
    Given el <paciente> se encuentra en la sección de Buscar psicólogo
    And el <paciente> selecciona su ubicación actual
    When el <paciente> desea filtrar la visualización de psicólogos que estén cerca de su ubicación
    Then el sistema muestra únicamente los psicólogos que están cerca de su ubicación actual

Examples:
    | rol | username | password | dashboard | Ubicación |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Ciudad de México |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Madrid, España |
    | paciente | Paciente123 | pass123 | dashboard de paciente | Nueva York, Estados Unidos |
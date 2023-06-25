Feature: Buscar plantilla de tratamiento por filtros

Scenario: El psicólogo desea buscar una plantilla de tratamiento para una condición mental en particular
  Given el psicólogo está en la página de búsqueda de plantillas
  When el psicólogo selecciona la condición mental <condicion_mental> de su preferencia
  Then el sistema muestra las plantillas de tratamiento relacionadas con la condición mental <condicion_mental>

  Examples:
    | condicion_mental                |
    | ansiedad                        |
    | depresión                       |
    | trastorno de estrés postraumático |

Scenario: El psicólogo necesita una plantilla de tratamiento para una población específica
  Given el psicólogo está en la página de búsqueda de plantillas de tratamiento
  When el psicólogo elige la opción de buscar una plantilla para una población específica <poblacion>
  Then el sistema filtra la visualización de las plantillas por la población escogida <poblacion>

  Examples:
    | poblacion         |
    | niños             |
    | adolescentes      |
    | adultos mayores   |

Scenario: El psicólogo desea encontrar una plantilla de tratamiento que incluya diferentes modalidades terapéuticas
  Given el psicólogo está en la página de búsqueda de plantillas de tratamiento
  When el psicólogo filtra la visualización de las plantillas por una modalidad terapéutica en específico <modalidad_terapeutica>
  Then el sistema muestra las plantillas de tratamiento que abarquen esas modalidades terapéuticas <modalidad_terapeutica>

  Examples:
    | modalidad_terapeutica |
    | terapia individual    |
    | terapia grupal        |
    | terapia familiar      |

Scenario: El psicólogo filtra su búsqueda de plantillas por categorías
  Given el psicólogo está en la página de búsqueda de plantillas de tratamiento
  When el psicólogo aplica filtros por categorías específicas en su búsqueda de plantillas <categoria>
  Then el sistema muestra las plantillas por categorías <categoria>

  Examples:
    | categoria  |
    | autoestima |
    | adicciones |
    | relaciones |
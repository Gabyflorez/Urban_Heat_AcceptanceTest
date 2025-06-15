#User Story ID US16
#Epic ID EP04
Feature: Registro de datos personales

  Scenario: Registro exitoso
    Given que he ingresado a "Mi perfil"
    When edito mis datos personales y hago clic en el botón para guardar los cambios
    Then el sistema guardará correctamente la información y mostrará un mensaje de confirmación que indique que los datos se han guardado con éxito

  Scenario: Fallo en el registro
    Given que existe una falla en la conexión a Internet o un problema con el servidor
    When intento guardar mis datos personales
    Then el sistema mostrará un mensaje de error que indique: "No se pudo guardar la información. Inténtelo más tarde"

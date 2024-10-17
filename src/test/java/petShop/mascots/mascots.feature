Feature: Ejercicio 2 de prueba de NttData

  Background:
    * url 'https://petstore.swagger.io/v2'

  Scenario: crear una mascota y obtener el id
    * def pet =
      """
      {
        "id": 123321,
        "category": {
          "id": 123321,
          "name": "Perrito"
        },
        "name": "Ninito",
        "photoUrls": [
          "tmp"
        ],
        "tags": [],
        "status": "available"
      }
      """

    Given path 'pet'
    And request pet
    When method post
    Then status 200


  Scenario: Consultar la mascota ingresada previamente

    Given path 'pet', 123321
    When method get
    Then response.name == 'Ninito'
    And response.id == 123321

  Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”
    * def pet =
      """
      {
        "id": 123321,
        "category": {
          "id": 123321,
          "name": "Perrito"
        },
        "name": "Sammy",
        "photoUrls": [
          "tmp"
        ],
        "tags": [],
        "status": "sold"
      }

      """
    Given path 'pet'
    And request pet
    When method put
    Then status 200

  Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)

    * def requestParams = {status: 'sold'}

    Given path 'pet/findByStatus'
    And params requestParams
    When method get
    Then match response contains deep {id: 123321}

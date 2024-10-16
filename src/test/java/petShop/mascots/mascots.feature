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

    * def id = response.id
    * print 'created id is: ', id

    Given path 'pet', id
    When method get
    Then status 200

    # Given path id
    # When method get
    # Then status 200
    # And match response contains user
  
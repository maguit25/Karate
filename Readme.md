# Prerequisitos
- JDK 17 (Agregar o actualizar la variable de ambiente JAVA_HOME)
- Maven 3.9.9 (Agregar o actualizar la variable de ambiente M2_HOME)
- karate-junit5 1.50

# Comandos de instalacion
mvn install -DskipTests=true

# Instrucciones para ejecutar los test
mvn clean test -Dtest=MascotsRunner 

Se genera un reporte html en la raiz del proyecto, dentro de target/karate-reports/karate-summary.html 

# Adicional
En caso de usar IntelliJIDEA se puede ejecutar los test mediante el IDE.
Unicamente se tiene que abrir el archivo src/test/java/petShop/PetShopTest.java y ejecutarlo para ejecutar todas las pruebas, en caso de querer ejecutat cada prueba, se tiene que ingresar a la carpeta de la prueba a ejecutar, en este caso mascots, abrir el archivo MascotsRunner.java y ejecutar las pruebas.
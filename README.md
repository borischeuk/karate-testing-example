# Karate Testing Example
This repository demostrates how to use [Karate](https://github.com/intuit/karate) to do API testing.

## Steps of Creating Project
1. Create a directory for the project and create pom.xml file in the directory
2. Add the following dependencies to pom.xml
``` xml
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-apache</artifactId>
    <version>0.6.0</version>
</dependency>
<dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit4</artifactId>
    <version>0.6.0</version>
</dependency>
```
3. Create `KarateTest.java` for running the Karate test
``` Java
@RunWith(Karate.class)
@CucumberOptions(features = "src/test/resources/features/posts.feature")
    public class KarateTest {
}
```
4. Create BDD-style testing script as follow:
``` Gherkin
Feature: abc
    Scenario: Test GET request exact response
        Given url 'https://jsonplaceholder.typicode.com/posts/1'
        When method GET
        Then status 200
        And match $ contains {id:1}
```
5. Use to following command to run the test
```
mvn test
```

## References
- [Karate Github](https://github.com/intuit/karate)


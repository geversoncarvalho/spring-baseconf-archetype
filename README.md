Spring MVC 4 Base Configuration Archetype
=========================================

Summary
-------
Spring MVC Archetype based on [spring-mvc-quickstart-archetype](https://github.com/kolorobot/spring-mvc-quickstart-archetype)

Characteristics
---------------
* No-xml Spring MVC 4 web application
* Apache Tiles, Bootstrap
* JPA (Hibernate/HSQLDB/Spring Data JPA)
* JUnit/Mockito/DBUnit
* Spring Security

Installation
------------
```bash
    cd spring-baseconf-archetype
    mvn clean install
```

Create a project
----------------
```bash
    mvn archetype:generate \
        -DarchetypeGroupId=com.github.spring-baseconf \
        -DarchetypeArtifactId=spring-baseconf-archetype \
        -DarchetypeVersion=1.0.0 \
        -DgroupId=my.groupid \
        -DartifactId=my-artifactId \
        -Dversion=version
```

Run the project
----------------
```bash
	mvn test tomcat7:run
```

Test on the browser
-------------------
```
	http://localhost:8080/
```
@echo off
:: Solicita o nome do projeto ao usuário
set /p projectName=Digite o nome do projeto: 

:: Cria a estrutura de pastas
mkdir %projectName%
cd %projectName%
mkdir WebContent
mkdir WebContent\WEB-INF
mkdir src
mkdir src\main
mkdir src\main\java
mkdir src\main\resources
mkdir src\main\webapp
mkdir src\main\webapp\WEB-INF

:: Cria o arquivo pom.xml com dependências de PrimeFaces e JavaEE
echo ^<project xmlns="http://maven.apache.org/POM/4.0.0" >> pom.xml
echo         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >> pom.xml
echo         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd"^> >> pom.xml
echo     ^<modelVersion^>4.0.0^</modelVersion^> >> pom.xml
echo     ^<groupId^>com.%projectName%^</groupId^> >> pom.xml
echo     ^<artifactId^>%projectName%^</artifactId^> >> pom.xml
echo     ^<version^>1.0-SNAPSHOT^</version^> >> pom.xml
echo     ^<packaging^>war^</packaging^> >> pom.xml
echo     ^<dependencies^> >> pom.xml
echo         ^<dependency^> >> pom.xml
echo             ^<groupId^>javax^</groupId^> >> pom.xml
echo             ^<artifactId^>javaee-api^</artifactId^> >> pom.xml
echo             ^<version^>8.0^</version^> >> pom.xml
echo             ^<scope^>provided^</scope^> >> pom.xml
echo         ^</dependency^> >> pom.xml
echo         ^<dependency^> >> pom.xml
echo             ^<groupId^>org.primefaces^</groupId^> >> pom.xml
echo             ^<artifactId^>primefaces^</artifactId^> >> pom.xml
echo             ^<version^>11.0.0^</version^> >> pom.xml
echo         ^</dependency^> >> pom.xml
echo         ^<dependency^> >> pom.xml
echo             ^<groupId^>org.hibernate^</groupId^> >> pom.xml
echo             ^<artifactId^>hibernate-core^</artifactId^> >> pom.xml
echo             ^<version^>5.6.15.Final^</version^> >> pom.xml
echo         ^</dependency^> >> pom.xml
echo         ^<dependency^> >> pom.xml
echo             ^<groupId^>mysql^</groupId^> >> pom.xml
echo             ^<artifactId^>mysql-connector-java^</artifactId^> >> pom.xml
echo             ^<version^>8.0.33^</version^> >> pom.xml
echo         ^</dependency^> >> pom.xml
echo         ^<dependency^> >> pom.xml
echo             ^<groupId^>javax.faces^</groupId^> >> pom.xml
echo             ^<artifactId^>javax.faces-api^</artifactId^> >> pom.xml
echo             ^<version^>2.3^</version^> >> pom.xml
echo             ^<scope^>provided^</scope^> >> pom.xml
echo         ^</dependency^> >> pom.xml
echo         ^<dependency^> >> pom.xml
echo             ^<groupId^>org.primefaces^</groupId^> >> pom.xml
echo             ^<artifactId^>primefaces^</artifactId^> >> pom.xml
echo             ^<version^>8.0^</version^> >> pom.xml
echo         ^</dependency^> >> pom.xml
echo     ^</dependencies^> >> pom.xml
echo     ^<build^> >> pom.xml
echo         ^<finalName^>%projectName%^</finalName^> >> pom.xml
echo         ^<plugins^> >> pom.xml
echo             ^<plugin^> >> pom.xml
echo                 ^<groupId^>org.apache.maven.plugins^</groupId^> >> pom.xml
echo                 ^<artifactId^>maven-compiler-plugin^</artifactId^> >> pom.xml
echo                 ^<version^>3.8.1^</version^> >> pom.xml
echo                 ^<configuration^> >> pom.xml
echo                     ^<source^>1.8^</source^> >> pom.xml
echo                     ^<target^>1.8^</target^> >> pom.xml
echo                 ^</configuration^> >> pom.xml
echo             ^</plugin^> >> pom.xml
echo         ^</plugins^> >> pom.xml
echo     ^</build^> >> pom.xml
echo ^</project^> >> pom.xml

:: Cria o arquivo web.xml básico no diretório WEB-INF
echo ^<?xml version="1.0" encoding="UTF-8"?^> > src\main\webapp\WEB-INF\web.xml
echo ^<web-app xmlns="http://java.sun.com/xml/ns/javaee" >> src\main\webapp\WEB-INF\web.xml
echo     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >> src\main\webapp\WEB-INF\web.xml
echo     xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd" >> src\main\webapp\WEB-INF\web.xml
echo     version="2.5"^> >> src\main\webapp\WEB-INF\web.xml
echo     ^<welcome-file-list^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<welcome-file^>index.xhtml^</welcome-file^> >> src\main\webapp\WEB-INF\web.xml
echo     ^</welcome-file-list^> >> src\main\webapp\WEB-INF\web.xml
echo ^</web-app^> >> src\main\webapp\WEB-INF\web.xml

:: Cria o arquivo faces-config.xml no diretório WEB-INF
echo ^<?xml version="1.0" encoding="UTF-8"?^> > src\main\webapp\WEB-INF\faces-config.xml
echo ^<faces-config xmlns="http://xmlns.jcp.org/xml/ns/javaee" >> src\main\webapp\WEB-INF\faces-config.xml
echo     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >> src\main\webapp\WEB-INF\faces-config.xml
echo     xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/javaee http://xmlns.jcp.org/xml/ns/javaee/web-facesconfig_2_3.xsd" >> src\main\webapp\WEB-INF\faces-config.xml
echo     version="2.3"^> >> src\main\webapp\WEB-INF\faces-config.xml
echo ^</faces-config^> >> src\main\webapp\WEB-INF\faces-config.xml

:: Cria o arquivo web.xml básico no diretório WEB-INF
echo ^<?xml version="1.0" encoding="UTF-8"?^> > src\main\webapp\WEB-INF\web.xml
echo ^<web-app xmlns="http://java.sun.com/xml/ns/javaee" >> src\main\webapp\WEB-INF\web.xml
echo     xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >> src\main\webapp\WEB-INF\web.xml
echo     xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd" >> src\main\webapp\WEB-INF\web.xml
echo     version="2.5"^> >> src\main\webapp\WEB-INF\web.xml
echo     ^<servlet^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<servlet-name^>Faces Servlet^</servlet-name^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<servlet-class^>javax.faces.webapp.FacesServlet^</servlet-class^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<load-on-startup^>1^</load-on-startup^> >> src\main\webapp\WEB-INF\web.xml
echo     ^</servlet^> >> src\main\webapp\WEB-INF\web.xml
echo     ^<servlet-mapping^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<servlet-name^>Faces Servlet^</servlet-name^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<url-pattern^>/faces/*^</url-pattern^> >> src\main\webapp\WEB-INF\web.xml
echo     ^</servlet-mapping^> >> src\main\webapp\WEB-INF\web.xml
echo     ^<welcome-file-list^> >> src\main\webapp\WEB-INF\web.xml
echo         ^<welcome-file^>index.xhtml^</welcome-file^> >> src\main\webapp\WEB-INF\web.xml
echo     ^</welcome-file-list^> >> src\main\webapp\WEB-INF\web.xml
echo ^</web-app^> >> src\main\webapp\WEB-INF\web.xml

:: Criando o diretório META-INF para o persistence.xml
mkdir src\main\resources\META-INF

:: Criando o arquivo persistence.xml
echo ^<?xml version="1.0" encoding="UTF-8"?^> > src\main\resources\META-INF\persistence.xml
echo ^<persistence xmlns="http://xmlns.jcp.org/xml/ns/persistence" >> src\main\resources\META-INF\persistence.xml
echo             xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >> src\main\resources\META-INF\persistence.xml
echo             xsi:schemaLocation="http://xmlns.jcp.org/xml/ns/persistence http://xmlns.jcp.org/xml/ns/persistence/persistence_2_1.xsd" >> src\main\resources\META-INF\persistence.xml
echo             version="2.1"^> >> src\main\resources\META-INF\persistence.xml
echo     ^<persistence-unit name="default" transaction-type="RESOURCE_LOCAL"^> >> src\main\resources\META-INF\persistence.xml
echo         ^<provider^>org.hibernate.jpa.HibernatePersistenceProvider^</provider^> >> src\main\resources\META-INF\persistence.xml
echo         ^<class^>com.example.model.YourEntityClass^</class^> >> src\main\resources\META-INF\persistence.xml
echo         ^<properties^> >> src\main\resources\META-INF\persistence.xml
echo             ^<property name="hibernate.dialect" value="org.hibernate.dialect.MySQL5Dialect" /^> >> src\main\resources\META-INF\persistence.xml
echo             ^<property name="javax.persistence.jdbc.driver" value="com.mysql.cj.jdbc.Driver" /^> >> src\main\resources\META-INF\persistence.xml
echo             ^<property name="javax.persistence.jdbc.url" value="jdbc:mysql://localhost:3306/seu_banco" /^> >> src\main\resources\META-INF\persistence.xml
echo             ^<property name="javax.persistence.jdbc.user" value="root" /^> >> src\main\resources\META-INF\persistence.xml
echo             ^<property name="javax.persistence.jdbc.password" value="sua_senha" /^> >> src\main\resources\META-INF\persistence.xml
echo         ^</properties^> >> src\main\resources\META-INF\persistence.xml
echo     ^</persistence-unit^> >> src\main\resources\META-INF\persistence.xml
echo ^</persistence^> >> src\main\resources\META-INF\persistence.xml


:: Cria um arquivo index.xhtml básico com PrimeFaces
echo ^<html xmlns="http://www.w3.org/1999/xhtml" >> src\main\webapp\index.xhtml
echo       xmlns:h="http://xmlns.jcp.org/jsf/html" >> src\main\webapp\index.xhtml
echo       xmlns:p="http://primefaces.org/ui"^> >> src\main\webapp\index.xhtml
echo     ^<h:head^> >> src\main\webapp\index.xhtml
echo         ^<title^>Página Inicial^</title^> >> src\main\webapp\index.xhtml
echo     ^</h:head^> >> src\main\webapp\index.xhtml
echo     ^<h:body^> >> src\main\webapp\index.xhtml
echo         ^<h1^>Projeto %projectName% criado com sucesso!^</h1^> >> src\main\webapp\index.xhtml
echo         ^<p:button value="PrimeFaces Teste" outcome="http://primefaces.org" /^> >> src\main\webapp\index.xhtml
echo     ^</h:body^> >> src\main\webapp\index.xhtml
echo ^</html^> >> src\main\webapp\index.xhtml

:: Exibe a mensagem de conclusão
echo  ===================================SUCESSO  ==================================================
echo Estrutura do projeto %projectName% foi configurada com sucesso!
echo Arquivos essencias foram gerados.
echo ====================================================================================================

:: Pausa para o usuário ver a mensagem antes de fechar
pause

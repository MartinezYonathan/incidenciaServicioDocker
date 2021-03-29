## Sistema de seguimiento de insidencias de la UACM

Esta es una implementación del Sistema de Seguimiento de Insidencias de la UACM, una herramienta que ayuda al seguimiento de tus insidencias y administrar las insidencias.

La implementación está compuesto por 3 contenedores Docker separados que contienen:
- PostgreSQL database
- Java backend (Spring Boot)
- Typescript frontend (Angular)

The entry point for a user is a website which is available under the
address: **http://localhost:4200/**

### PreRequisitos

Para ejecutar esta aplicación, debe instalar dos herramientas: ** Docker ** y ** Docker Compose **.
Instrucciones de cómo instalar ** Docker ** en [Ubuntu] (https://docs.docker.com/install/linux/docker-ce/ubuntu/), [Windows] (https://docs.docker.com/ docker-para-windows / install /), [Mac] (https://docs.docker.com/docker-for-mac/install/).

** Dosker Compose ** ya está incluido en los paquetes de instalación para * Windows * y * Mac *, por lo que solo los usuarios de Ubuntu deben seguir [estas instrucciones] (https://docs.docker.com/compose/install/).

### ¿Cómo ejecutarlo?

Se puede ejecutar una aplicación completa con un solo comando en una terminal:
```
$ docker-compose up -d
```

Si desea detenerlo, use el siguiente comando:

```
$ docker-compose down
```

Pero de igual manera se creo un script builder.sh donde ya se integran todos los comando 

Se le da permisos con 
```
 $ chmod 777 builder.sh
```
y se ejecuta 
```
docker/$ ./builder.sh <comando>
```
    - front)
    - back)
    - clean)
    - down)
    - up)
    - help)
    - todo)


Se tiene que tener 4 carpetas dentro de una que se llama incidencias y dentro de incidencias deben estar los proyectos back, front, docker y por ultimo una carpetas que se llamara jar
```
──incidencias
   ├── backend (https://github.com/MartinezYonathan/incidenciaServicioBackend)
   ├── frontend (https://github.com/MartinezYonathan/incidenciaServicioFrontEnd)
   ├── jar (mkdir jar)
   └── docker (https://github.com/MartinezYonathan/incidenciaServicioDocker)
```
Al igual que otras partes de la aplicación, la base de datos de Postgres está en contenedores y
la definición de su contenedor Docker se puede encontrar en
* archivo docker-compose.yml *.

```yml
incidencias-postgres:
    image: "postgres:9.6-alpine"
    container_name: incidencias-postgres
    volumes:
      - incidencia-data:/var/lib/postgresql/data
    ports:
      - 5432:5432
    environment:
      - POSTGRES_DB:incidencias-bd
      - POSTGRES_USER:root
      - POSTGRES_PASSWORD:password1.-
```

#### incidencias-backendo (API REST)
crum-app
Esta es una aplicación basada en Spring Boot (Java) que se conecta con un
base de datos que exponen los servicios REST que pueden ser consumidos por
Interfaz. Admite múltiples métodos HTTP REST como GET, POST, PUT y
DELETE para los recursos.

La lista completa de los servicios REST disponibles se puede encontrar en Swagger UI,
que se puede llamar usando el enlace: ** http://localhost:8080/swagger-ui.html#/ **

Esta aplicación también se coloca en el contenedor Docker y se puede encontrar su definición
en un archivo * scrum-app / Dockerfile *.



#### incidencias-ui (Frontend)

Este es un punto final para un usuario donde puede registrarse y dar de alta sus
incidencias y darles segumiento. Consume los endpoint de la API REST proporcionados por
* incidencias-backendo *.

Se puede ingresar usando el enlace: ** http://localhost:4200/ **

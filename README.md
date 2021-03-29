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

    - front)
    - back)
    - clean)
    - down)
    - up)
    - help)
    - todo)

Se le da permisos con 
```
 $ chmod 777 builder.sh
```
y se ejecuta 
```
./builder.sh
```

Se tiene que tener 4 carpetas dentro de una que se llama incidencias y dentro de incidencias deben estar los proyectos back, front, docker y por ultimo una carpetas que se llamara jar

──incidencias
   ├── backend (https://github.com/MartinezYonathan/incidenciaServicioBackend)
   ├── frontend (https://github.com/MartinezYonathan/incidenciaServicioFrontEnd)
   ├── jar
   └── docker (https://github.com/MartinezYonathan/incidenciaServicioDocker)


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

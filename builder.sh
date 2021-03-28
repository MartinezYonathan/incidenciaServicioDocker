#!/bin/sh

show_help()
{
    CMD=`basename $0`
    echo "${CMD} OPCION" 
    echo "OPCION: frontend backend compose docker"
}


build_incidencias_back()
{

    # Compilacion de sistema de incidencias
    cd $DIR_BASE/backend
    pwd
    pwd
    
    
    # maven para construir jar
    mvn clean install
    
    JAR_FILE=incidencias-0.0.1-SNAPSHOT.jar
    rm -Rf $DIR_BASE/jar/${JAR_FILE}
    cp $DIR_BASE/backend/target/${JAR_FILE} $DIR_BASE/jar/
    ls -l $DIR_BASE/backend/target/${JAR_FILE} $DIR_BASE/jar/${JAR_FILE}

}


build_incidencias_front()
{
    cd $DIR_BASE/frontend
    npm install
}




if [ $# -lt 1 ];
then 
    echo "Falta de parametros OPCION"
    show_help
    exit 0
fi

MODULE=$1

DIR_HOME=$HOME
CUSTOMER=incidencias
DIR_BASE=$DIR_HOME/$CUSTOMER

cd $DIR_BASE

VERSION=18.03.01
PREFIX=com.$CUSTOMER
ENVIRON=local

DB_HOST=localhost
DB_PORT=3306
USER_DB=root
PASSWORD_DB=mysql


case $MODULE in
    front)
        build_incidencias_front
        ;;

    back)
        build_incidencias_back
        ;;

    docker-clean)
        docker system prune -f
        ;;

    down)
        sudo docker-compose -f $DIR_BASE/docker/docker-compose-${ENVIRON}.yml down
        ;;

    up)
        sudo docker-compose -f $DIR_BASE/docker/docker-compose-${ENVIRON}.yml up -d
        ;;

    help)
        show_help
        ;;

    todo)
	build_incidencias_back
	build_incidencias_front
	;;

    *)
        echo "Opción ${MODULE} no valida!"
        show_help
        ;;
esac

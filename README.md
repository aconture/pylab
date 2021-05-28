Repositorio que levanta un entorno docker para probar con python.

BUILD:
======

El docker se genera con:
> sh build.sh

El docker-compose levanta un volumen compartido con la máquina host, en el directorio ./apps
en este directorio ./apps incluyo las aplicaciones python que quiero ejecutar
el conttenido de ./apps se puede editar con las aplicaciones de la máquina host.

El dockerfile crea el usuario 'pylab'

En el Dockerfile se ejecuta:
> CMD ["/usr/bin/python","/apps/init.py"] 

este init.py levanta el servicio de sphinx, que es un servicio elejido aleatoriamente sólo para poder dejar el docker corriendo, poder ejecutar el "docker exec" y de esta manera poder visibilizar el volumen compartido ./apps


INICIO:
=======

El docker se inicia con:

> sh ini.sh

una vez que se inicia el docker, quedo posicionado dentro de la vm, y ejecuto python.


Instalar librerias python
=========================
declarar las librerias necesarias en requirements.txt y luego ejecutar:
> build.sh

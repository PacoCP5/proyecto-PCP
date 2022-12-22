# Proyecto-PCP
> Proyecto para la asignatura Infraestructura Virtual de la Universidad de Granada. Curso 2022/23

### Problema:

En muchos hospitales existen problemas de organización con los turnos de los enfermeros para atender a los distintos pacientes según sus necesidades y también según la disponibilidad de los enfermeros.

### Propuesta:

Realizar una aplicación web que conecte a los hospitales (el cliente) con sus trabajadores, para permitir que estos elijan su preferencia en los turnos y atender así a los pacientes atendiendo a las necesidades de estos utilizando un sistema de triaje (esquema job scheduling).

## Avances del proyecto (Milestones)

* [x] #### **Milestone 0:**

Representación del modelo, clases compilables que describan la asignación del horario a los usuarios (trabajadores) con las estructuras de datos adecuadas.

* [x] #### **Milestone 1:**

Implementación de la lógica de negocio, algoritmo para la asignación de horario según las preferencias de cada usuario.

* [x] #### **Milestone 2:**

Interfaz de usuario para la aplicación que permita a los usuarios introducir su preferencia de los horarios y muestre la asignación.


## Documentación adicional

[Tipos de usuario](docs/Documentación-1/users.md)

[Historias de usuario](docs/Documentación-1/HUs.md)

## Automatización

### Gestor de versiones

Se han elegido **RVM** como gestor de versiones tras considerar Rbenv como alternativa. El criterio que he seguido ha sido que RVM tiene un mecanismo de instalación de Ruby incorporado, con lo cual lo encuentro más cómodo de usar, a pesar de que Rbenv es más ligero.

Para instalar RVM he seguido las instrucciones de su [página oficial](https://rvm.io/rvm/install).

### Gestor de tareas y dependencias

Mis criterios a la hora de elegir estas herramientas van a ser la velocidad y la frescura (es decir, el mantenimiento que reciben estas herramientas).

Para el gestor de dependencias he elegido **Bundler**, ya que tiene soporte reciente y su uso es el más extendido, a pesar de haber considerado otras opciones como Gel, la cual es más rápida, pero he encontrado un error de incompatibilidad con la versión de Ruby que estoy usando.

Por otro lado, para el gestor de tareas he eligido **Make** cuyo uso está ampliamente extendido en la comunidad y recibe soporte continuamente, frente a Rake, el cual es el más usado en la comunidad de Ruby, debido a que este no recibe soporte desde hace tiempo (su última versión es de julio de 2021).

Para comprobar la sintaxis de las entidades se utilizará:

```makefile
make check
```

## Biblioteca de aserciones y test runner
Las herramientas más utilizadas para realizar estas tareas son `rspec` y `minitest`, las cuales ya incluyen una biblioteca de aserciones integrada. Ambos tienen una frescura adecuada y un uso extendido amplio (ver [este enlace](https://www.ruby-toolbox.com/categories/testing_frameworks)). Los criterios que voy a seguir van a ser la flexibilidad a la hora de poder elegir entre TDD y BDD (me gustaría poder seguir TDD), así que usaré **minitest**, puesto que este permite seguir tanto TDD como BDD y `rspec` está más enfocado a BDD.

Para realizar la ejecución de los test se debe utilizar la orden:

```makefile
make test
```

## Elección del contenedor para automatizar las pruebas

En primer lugar, debemos elegir la imagen base para el contenedor que automatizará las pruebas. 
Los criterios serán principalmente lo ligera que sea la imagen y que la versión del lenguaje Ruby sea la última.

La versión con la que trabajaremos será la última actualmente, que es la 3.2. Siguiendo también las [buenas prácticas a la hora de crear un contenedor para Ruby](https://lipanski.com/posts/dockerfile-ruby-best-practices), debemos usar solamente versiones oficiales o versiones propias, por lo tanto he mirado en la [página oficial](https://hub.docker.com/_/ruby), las imágenes base disponibles para esta versión.

Estas son las versiones y el tamaño que ocupan:
 - `ruby:3.2.0-rc1-alpine3.17`: 71.43MB
 - `ruby:3.2.0-rc1-buster`: 856.49MB
 - `ruby:3.2.0-rc1-slim-bullseye`: 163.3MB
 - `ruby:3.2.0-rc1-bullseye`: 888.05MB 

También esta la opción de instalar un sistema operativo como base e instalar el lenguaje sobre él. Si hacemos esto la imagen resultante, que es la que finalmente estamos utilizando ocupa unos 45.73 MB, con lo cual es nuestra mejor opción.

## Configuración del repositorio

Para ver que el repositorio está bien configurado: 

[Carpeta `.git`](docs/Documentación-0/Captura de pantalla de 2022-09-16 19-15-18.png)

[Archivo `config`](docs/Documentación-0/Captura de pantalla de 2022-09-16 19-15-40.png)

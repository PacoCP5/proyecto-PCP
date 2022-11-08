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

He elegido **Rake** como gestor de tareas y **Bundler** como gestor de dependencias, ya que no he encontrado ninguna alternativa con la documentación suficientemente clara y estas herramientas están bastante extendidas en la comunidad. 

Para comprobar la sintaxis de las entidades se utilizará:

```makefile
rake check
```

## Configuración del repositorio

Para ver que el repositorio está bien configurado: 

[Carpeta `.git`](docs/Documentación-0/Captura de pantalla de 2022-09-16 19-15-18.png)

[Archivo `config`](docs/Documentación-0/Captura de pantalla de 2022-09-16 19-15-40.png)


Sigue a tu Funcionario.
================================================================

Herramientas usadas
----------------------------------------------------------------

Se realizó una aplicación web usando las siguientes herramientas:

* Framework: Ruby on Rails, Ruby 2.0.0 y Rails 4.1.0.
* Base de datos: Postgres en producción y SQLite en desarrollo.
* El código está alojado en GitHub: [https://github.com/Ligator/sigueatufuncionario](https://github.com/Ligator/)
* El proyecto está alojado en Heroku: [https://sigueatufuncionario.herokuapp.com/](https://github.com/Ligator/)


Descargar y correr el proyecto localmente
----------------------------------------------------------------

Para esta sección damos por hecho que el desarrollador tiene intalado previametne las veriones de Ruby y Rails mencionados en la sección anterior.

1.- Clonar el repositorio:

```
$ git clone https://github.com/Ligator/sigueatufuncionario
```

2.- Instalar las gemas requeridas:

```
$ cd sigueatufuncionario
$ bundle install
```

3.- Crear la base de datos:

```
$ rake db:create
$ rake db:migrate
```

4.- Correr el proyecto

```
$ rails server
```

Uso del Proyecto
----------------------------------------------------------------

En la aplicación existen 3 **roles**: 

* Usuarios no registrados.
* Usuarios registrados.
* Administradores.

Y 5 **secciones** básicas:

1. **Página principal** ( */* ). Aquí se muestra una lista de las Dependencias del Estado de Jalisco.
2. **Detalle de la Dependencia** ( */agency/:id* ). Una vez seleccionada una Dependencia podemos ver más información de ésta y también información del funcionario titular.
3. **Evaluación del Funcionario** ( */evaluations/index?agency_id=:id* ). Una vez leída la información del funcionario, podemos proceder a evaluarlo. Con cada pregunta podemos seleccionar un valor de 1 a 5 estrellas, siendo 1 la puntuación mínima requerida para que nuestro voto sea contado.
4. **Resultados mensuales** ( */monthly_results* ). En esta sección podemos ver la puntuación final de los funcionarios por mes.
5. **Preguntas**. En esta sección se pueden crear, modificar y eliminar las preguntas de la evaluación, así como también se elige la información que es necesaria para contestar a la pregunta.

Los *Usuarios no registrados* pueden ver las secciones 1, 2 y 4.

Los *Usuarios registrados* pueden además ver también la sección 3 para evaluar a los funcionarios.

Los *Administradores*, además las secciones anteriores tienen acceso también al resto de secciones dedicados a la creación y edición de Dependencias, Funcionarios y Preguntas.

### Estos son usuarios de ejemplo para poder usar la plataforma web:

Usuario registrado

* **Email:** myemail@example.com
* **Contraseña:** 123456789

Administrador

* **Email:** soyadmin@example.com
* **Contraseña:** 123456789

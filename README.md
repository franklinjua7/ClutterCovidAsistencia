# flutter_covid_asistencia

Propuesta de la asistencia de los paciente con Covid 19

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Acceso al aplicativo
El acceso al aplicativo se hace mediante el logue, el cual pide un usuario y contraseña.
Para este caso, se utilizará el número de DNI como el parámetro de usuario y la clave es opcional, puede ser cualquier valor.

##API de la reniec
Para poder hacer la validación del usuario (número de DNI), se utilizo el Api de la reniec para obtener los datos necesarios como el nombre completo y el cargo que se le asignará dentro del aplicativo.
Link: https://api.reniec.cloud/dni/48010354

##Tipo de Usuario
Existen dos tipos de usuario del aplicativo, por el momento el aplicativo cogera el valor CUI devuelto del api como parámetro para designar el cargo del usuario loguea, en el cual si el valor es impar se le asiganara el cargo de DOCTOR; y si el valor es par se le asignara el cargo de PACIENTE.

##Usuario Doctor
Dicho usuario tendra acceso a las vistas de los módulos de: Lista de Pacientes y Ubicación de Pacientes.

##Usuario Paciente
Dicho usuario tendra acceso a las vistas de los módulos de: Datos, Módulos y Noticias.

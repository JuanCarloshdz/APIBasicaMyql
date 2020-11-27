

## Contenido del repositorio

Este repositorio contiene las siguientes carpetas:
*   DB. Esta carpeta contiene un backup de la base de datos montada en heroku
*   src. Esta carpeta contiene los archivos necesarios para el servidor

## Contenido de la base de datos

El respaldo de la base de datos solo tiene la tabla <strong>restaurants</strong> el contenido se muestra en la siguiente Tabla.

<table >
  <tr>
    <th>Atributo</th>
    <th>Valor</th>
    <th>Es llave primaria</th>
  </tr>
  <tr>
    <td>id</td>
    <td>int(11)</td>
    <td>Si</td>
  </tr>
  <tr>
    <td>rating</td>
    <td>int(11)</td>
    <td>No</td>
  </tr>
	<tr>
    <td>name</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>site</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>email</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>phone</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>street</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>city</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>state</td>
    <td>text</td>
    <td>No</td>
  </tr>
	<tr>
    <td>lat</td>
    <td>float</td>
    <td>No</td>
  </tr>
	<tr>
    <td>lng</td>
    <td>float</td>
    <td>No</td>
  </tr>
	
</table>

*   <strong>Nota.-</strong> Los atributos  <strong>lat</strong> y <strong>lng</strong> representan la latitud y la longitud geografica donde se encuentra el restaurante

## Contenido de la base de datos

Esta carpeta contiene todos los archivos necesarios para la ejecución del servidor en express el cual se encuentra montado en el host de heroku, los nombres y la descripción de los archivos se muestran a continuación:

*   <strong>index.js,</strong> este archivo tiene como finalidad inicializar el entorno de ejecución del servidor.
*   <strong>database.js,</strong> la finalidad de este archivo establecer una conexión a la base de datos la cual mediante un addons de heroku podrá ser manipulada.
*   <strong>restaurantes.js,</strong> este archivo se encuentra dentro de la carpeta <strong>routes</strong>. Esta carpeta tiene como finalidad ser el directorio donde se almacenaran los micro servicios del servidor (actualmente solo tiene las rutas creadas para la manipulación de la información de los restaurantes)

## Descripcion de la API restaurantes (restaurantes.js)

En esta sección se describirá en las siguientes subsecciones las cuales están clasificadas por tipos de petición:<strong>a)GET;, b)POST;, c)PUT y d)UPDATE</strong> Y finalmente <strong>d)DELETE.</strong> 
Por otro lado tenemos que se implementaron en total 7 endpoints. <br />



### `Peticiones GET`

Estas peticiones tiene como finalidad hacer la recuperación de la información almacenada en la base de datos, en esta api se implementaron 4 URL’S, las cuales se muestran y se describen a continuación:
*   <strong>/,</strong> esta URL tiene como finalidad hacer la recuperación de la información de los restaurantes almacenados en la base de datos.
*   <strong>/:id,</strong> la finalidad de esta URL es hacer la recuperación de la información asociada al restaurante perteneciente al id enviada desde la petición.
*   <strong>/valida/:id,</strong> esta URL se hizo con la finalidad de validar la id que se manda como parámetro desde el frontend para evitar confitos en la base de datos.
*   <strong>/:lat/:long/:radio,</strong>URL tiene como propósito generar una estadístico a partir de los parámetros: a) latitud;, b)longitud; y  c) un radio definido en metros, los cuales son pasados como parámetros y como resultado se obtiene el número de restaurantes cercanos a la ubicación, así como también el promedio y la desviación estándar del <strong>raiting</strong> de los restaurantes cercanos.


### `Peticion POST`

El endpoint implementado tiene como finalidad dar de alta un restaurante con información nueva, los parámetros son pasados a través del request de la petición del  JSON con las siguientes características:<br />
<strong>:
{
    "id":       "", 
    "rating":   0, 
    "name":     "", 
    "site":     "", 
    "email":    "", 
    "phone":    "", 
    "street":   "", 
    "city":     "", 
    "state":    "", 
    "lat":      "0", 
    "lng":      "0"
		}
</strong>
<br />
Una de las validaciones implementadas en esta url consistió en que si la <strong>id</strong> proporcionada por el JSON ya se encuentra registrada retorne como resultado el siguiente JSON:<br />
<strong>{ 'status': 'error ya existe la id' }</strong>
<br />
<br />
Otra de las validaciones implementadas consistió en que el <strong>raiting</strong> proporcionado por el JSON fuera un número, en caso de que este no fuera un número retorna como respuesta el siguiente JSON:
<br />
<Strong>
{ 'status': 'Error valor ingresado' }
</strong>
<br />
<br />
Además, también se validó que el rating proporcionado por el JSON este entre los valores 0 y 4, en caso de no ser así la URL retorna como resultado el siguiente JSON:
<br />
<strong>
{ 'status': 'Valor Fuera de rango' }
</strong>
<br />
<br />
En caso del que JSON pase estas validaciones la información contenida en el JSON es almacenada en la base de datos y retorna un JSON con las siguientes características:
<br />
<strong>
{ 'status': 'restaurant Saved', id }
</strong>
<br />
<br />
En caso de que la conexión de la base de datos se pierda en algún momento se retornara el siguiente JSON:
<br />
<strong>
{ 'status': "error en la consulta"  }
</strong>
<br />
<br />

### `Peticion PUT`

Esta petición tiene como finalidad modificar un registro en la base de datos, esta URL tiene las mismas validaciones que la URL de la petición POST así como también la misma estructura, en caso de que la información sea actualizada, el JSON que se retorna es el siguiente:
<br />
<strong>
{ 'status': 'restaurant Saved', id   }
</strong>
<br />
<br />
Donde el id es el parámetro proporcionado por el JSON

### `Peticion DELETE`
Esta petición tiene como finalidad eliminar un registro en la base de datos esta URL tiene solo la validación del que el id pasado como parámetro exitista en la base de datos. Por otro lado en caso de que la eliminación se realice de manera correcta se retorna el siguiente JSON:
<br />
<strong>
{ status: 'Restaurant deleted', id   }
</strong>
<br />
<br />
Donde el id corresponde al parámetro enviado desde la petición.

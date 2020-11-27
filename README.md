

## Contenido del repositorio

Este repositorio contiene contiene las siguientes carpetas:
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

*   <strong>Nota.-</strong> los atributps lat y lng representan la latitud y la longitud geografica donde se encuentra el restaurante

## Contenido de la base de datos

Esta carpeta contiene todos los archivos necesarios para la ejecucion del servidor en de express el cual se encuentra montado en el host de heroku estos archivos se muestran a continuacion:

*   <strong>index.js,</strong> este archivo tiene como finalidad inicializar el entorno de ejecucion del servidor
*   <strong>database.js,</strong>la finalidad de este archivo establecer una conecion a la base de datos la cual mediante un addons de heroku podra ser manipulada
*   <strong>restaurantes.js,</strong> este archivo se encuentra dentro de la carpeta routes. esta carpeta tiene como finalidad ser el directorio donde se almacenaran los microservicios del servidor( actualmente solo tiene las rutas creadas para la manipulacion de la informacion de los restaurantes)

## Descripcion de la API restaurantes (restaurantes.js)

Esta seccion se describira en las siguientes partes las cuales estan clasificadas por tipos de peticion: <strong>a)GET;, b)POST;, c)UPDATE</strong> Y finalmente <strong>d)DELETE.</strong> 
por otro lado tenemos que se implementaron en total 7 end points <br />



### `Peticiones GET`

Estas peticiones tiene como finalidad hacer la recuperacion de la informacion de la base de datos, en esta api se implementaron 4, las urls para aceder se muestran y se describen a continuacion:
*   <strong>/,</strong> esta url tiene como finalidad hacer la recuperacion de la informacion de los restaurantes almacenados en la base de datos
*   <strong>/:id,</strong> la finalidad de esta url es hacer la recuperacion del restaurante que pertenesca a la id envidad como parametro al servidor
*   <strong>/valida/:id,</strong> esta url se hizo con la finalidad de validar la id que se manda como parametro desde el frontend para evitar confiltos en la base de datos
*   <strong>/:lat/:long/:radio,</strong>esta url tiene como finalidad generar una estadistico apartir de los parametros: a) latitud;, b)longitud; y  c) un radio definido en metros, los cuales son pasados como parametros y como resultado se obtiene elnumero de restaurantes cercanos a la ubicacion, asi como tambien el promedio y la desviacion estandar del raiting de los restaurantes cercanos.


### `Peticion POST`

El endpoint implementado tiene como finalidad darde alta un restaurante con informacion nueva, los parametros son pasados atravez del del request de la peticion atravez de un JSON con las siguientes caracteristicas:<br />
<strong>
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
Una de las validaciones implementadas en esta url consistio en que si la <strong>id</strong> proporcionada por el JSON ya se encuentra registrada retorne como resultado el siguiente JSON<br />
<strong>{ 'status': 'error ya existe la id' }</strong>
<br />
<br />
Otra de las urls implementadas consistito en que el raiting propocionado por el JSON fuera un numero en caso de que este no fuera un numero retrona como respuesta el siguiente
JSON:
<br />
<Strong>
{ 'status': 'Error valor ingresado' }
</strong>
<br />
<br />
Ademas, tambien se valido que el rating proporcionado por el JSON este entre los valores 0 y 4, en caso de no ser asi la url retorna como resultado el siguiente JSON:
<br />
<strong>
{ 'status': 'Valor Fuera de rango' }
</strong>
<br />
<br />
En caso del que JSON pase estas validaciones la informacion contenida en el JSON es almacenada en la base de datos y retorna un JSON con las siguientes caracteristicas:
<br />
<strong>
{ 'status': 'restaurant Saved', id }
</strong>
<br />
<br />
en caso de que la conexion de la base de datos se pierda en algun momento se retornara el siguiente JSON:
<br />
<strong>
{ 'status': "error en la consulta"  }
</strong>
<br />
<br />

### `Peticion PUT`

ESta peticion tiene como finalidad modificar un registro en la base de datos, esta url tiene las mismas validaciones que la url de la Peticion POST asi como tambien la misma estructura,
en caso de que la informacion sea actualizada el JSON que se retorna es el siguiente
<br />
<strong>
{ 'status': 'restaurant Saved', id   }
</strong>
<br />
<br />
Donde el id es el parametro proporcionado por el JSON

### `Peticion DELETE`
Esta peticion tiene como finalidad eliminar un registro en la base de datos esta url tiene solo la validacion del que el id pasado como parametro exitista en la base de datos. Por otro lado en caso de que la eliminacion se realice de manera correcta 
se retorna el siguiente JSON: 
<br />
<strong>
{ status: 'Restaurant deleted', id   }
</strong>
<br />
<br />
Donde el id corresponde al parametro enviado desde la peticion.

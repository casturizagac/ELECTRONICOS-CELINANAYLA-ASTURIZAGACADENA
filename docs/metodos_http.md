
# Métodos HTTP

## GET

GET se utiliza para consultar información.

- URL: https://jsonplaceholder.typicode.com/posts/1
- Método: GET
- Body: no se envía.
- Respuesta esperada: 200 OK.

Ejemplo: consultar una publicación existente.

## POST

POST se utiliza para crear un recurso.

- URL: https://jsonplaceholder.typicode.com/posts
- Método: POST
- Body (JSON):

```json
{
  "title": "Mi publicacion",
  "body": "Contenido de prueba",
  "userId": 1
}
```

- Respuesta esperada: 201 Created.

## PUT

PUT se utiliza para reemplazar los datos de un recurso.

- URL: https://jsonplaceholder.typicode.com/posts/1
- Método: PUT
- Body (JSON):

```json
{
  "id": 1,
  "title": "Publicacion modificada",
  "body": "Contenido modificado",
  "userId": 1
}
```

- Respuesta esperada: 200 OK.

## PATCH

PATCH se utiliza para modificar solamente una parte de un recurso.

- URL: https://jsonplaceholder.typicode.com/posts/1
- Método: PATCH
- Body (JSON):

```json
{
  "title": "Nuevo titulo"
}
```

- Respuesta esperada: 200 OK.

## DELETE

DELETE se utiliza para solicitar la eliminación de un recurso.

- URL: https://jsonplaceholder.typicode.com/posts/1
- Método: DELETE
- Body: no se envía.
- Respuesta esperada: 200 OK.

## Diferencia entre PUT y PATCH

PUT reemplaza el recurso con los datos enviados. PATCH cambia únicamente los campos especificados.


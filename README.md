# Laboratorio 02

Desplegar servicio web + base de datos con Docker

## Stack
API
  - 3 copias corriendo en paralelo: api1, api2, api3 (construye la imagen desde ./api que es la api de nmatsui/hello-world-api modificada)
  - Docker

BD
  - PostgreSQL 16

# Estructura
<img width="352" height="515" alt="image" src="https://github.com/user-attachments/assets/18345ac1-349c-4f67-b34c-3af69591f486" />

# Indicaciones

## Configurar variables de entorno
Copiar y editar con mensajes propios el .env.example, y las credenciales de la BD
```
cp .env.example .env
API_MESSAGE=...
```
## Comandos para desplegar

```bash
docker compose up -d
```

## Despliegue
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/135270b5-5a24-40d0-a986-added2bd1fd0" />
<img width="1366" height="768" alt="image" src="https://github.com/user-attachments/assets/626ffc38-63e5-4d02-aa39-192b614aa441" />

## Redes
- Se usa bridge que es como crear un pequeña red privada para los contenedores, para que entre ellos se puedan comunicar (ej: api1 -habla> db) y para que algo de afuera entre se tiene que abrir un puerto (docker lo usa por defecto).
- El contenedor usa la red de mi laptop, lo que sería el host, que es rápido pero no tan seguro.
- El overlay conecta los contenedores que están en máquinas físicas distintas como si estuvieran en el mismo lugar aunque estén lejos, por lo general se usan en Kubernetes.
- Lo que le da una identidad propia al contenedor en la red física es el macvlan (como si fuera un dispositivo más conectado de forma directa a un router).
- Cuando el contenedor esta aislado sería none porque no necesita conectarse a nada.

## Volumenes
- Los volumenes con nombre (el que use para la bd) se encarga de guardar los datos y administrarlos, así aunque se borre el contenedor los datos siguen ahí.
- Los bind mounts son como una carpeta de una laptop que se conecta al contenedor, se puede ver y editar los archivos desde la laptop y el contenedor también ve eso.
- Cuando los datos se guardan en la RAM y no en el disco, es un tmpfs y es más para cosas temporales.
- Los volumenes anónimos son como los volumenes con nombre pero la diferencia es que Docker les pone un nombre random y son más dificiles de identificar.


# Creditos
- Tamara Gabriela Solano Caspito

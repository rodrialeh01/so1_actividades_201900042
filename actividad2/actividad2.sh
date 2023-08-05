#Pide el nombre de usuario de github y la lee
echo "Ingrese su username de github:"
#GITHUB_USER="rodrialeh01"
read GITHUB_USER

#Se crea la variable de la url de la api de github
URL="https://api.github.com/users/${GITHUB_USER}"

#Se crea la variable del user_id, que es el id del usuario de github
user_id=$(curl -s $URL | jq -r '.id')

#Se crea la variable del created_at, que es la fecha de creacion de la cuenta de github
created_at=$(curl -s $URL| jq -r '.created_at')

#Se crea la variable del saludo, que es el mensaje que se mostrara en la shell
saludo="Hola $GITHUB_USER. User ID:${user_id}. Cuenta fue creada el: ${created_at}."

#muestra el saludo
echo $saludo

#obitnene la fecha actual
fecha=$(date +"%d-%m-%Y")

#crea la carpeta de la fecha
mkdir -p "/tmp/$fecha"

#crea y escribe el saludo en saludos.log
echo $saludo >>"/tmp/$fecha/saludos.log"


# Actividad 1

|Nombre|Carnet|
|------|------|
|Rodrigo Alejandro Hernández de León|201900042|

## Tipos de Kernel y sus diferencias
Los tipos de kernel son los siguientes:
- ### Kernel monolítico:

Es un Kernel de gran tamaño que puede gestionar todas las tareas. Se encarga de la gestión de memoria y procesos, asi como la comunicación entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware.

- ### Microkernel:

Es un kernel que esta diseñado de pequeño tamaño y tiene una clara función: evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas como un kernel monolítico cuenta con diferentes módulos.

- ### Kernel híbrido:

Es una combinación entre un microkernel y el kernel monolítico. Es un kernel grande, pero compacto y que puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica.

- ### Nanokernel:

Es un kernel de tamaño muy pequeño (más pequeño que el microkernel), que se encarga de las tareas básicas de un sistema operativo. Es utilizado en sistemas embebidos.

- ### Exokernel:

Este kernel su estructura es innovadora ya que se encuentra de manera vertical. Los núcleos son pequeños y sui desarrollo tiene fines investigativos. En un exokernel la toma de decisiones está a cargo de los programas, para hacer uso de los recursos del harware en ciertas bibliotecas. El Kernel se limita a evitar errores en los permisos de hardware y eludir conflictos.

- ### Unikernel:

Es un kernel destinado a la eliminación de capas intermedias entre el harware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos. Es habitual en dispositivos de bajo consumo como los IoT.

- ### Anykernel:

Este Kernel es otro concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero tambien facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario.

### Principales diferencias entre los kernels más comúnes
| Kernel Monolítico | Microkernel | Kernel Híbrido |
| --- | ---- | ---- |
| Mayor rapidez al ser un solo programa, ya que no necesita comunicarse con ningún proceso externo. | Este tipo de kernel divide las tareas del kernel en servidores, el código fuente tiende a estar mejor organizado. | Mayor facilidad en la integración de tecnologías de terceros. |
| Debido a que es un sólo componente de software, su código fuente al igual que el binario compilado tienden a ser pequeños. | La mejor organización del código hace que sea mucho más fácil darle mantenimiento. | Debido a la gran cantidad de interfaces con las que se debe lidiar, es más probable que exista algún tipo de bug en el sistema. |
| Usualmente el proceso de desarrollo es tedioso debido a que con frecuencia se debe reiniciar el sistema para poder probar las modificaciones en el kernel. | El proceso de desarrollo suele ser más ágil debido a que no se requiere de un reinicio total del sistema para probar el código nuevo. | Ágil proceso de desarrollo ya que al igual que con los microkernels, se pueden probar nuevas piezas de código sin necesidad de reiniciar el sistema. |
| Su relativa menor cantidad de código hace que sea menos probable que existan errores y por esto puede hacerlo más seguro. | La cantidad de memoria que suele requerirse para la ejecución del kernel tiende a ser mayor debido a la gran cantidad de servidores que se deben ejecutar para llevar a cabo las tareas. | |

## User vs Kernel Mode

- ### User Mode: 
Es uno de los modos de operación principales en un sistema operativo moderno que utiliza el concepto de protección de memoria. En este modo los programas y las aplicaciones se ejecutan con privilegios limitados y restringidos. Esto significa que ciertas instrucciones y recursos del hardware no están disponibles directamente para el programa en ejecución. 

- ### Kernel Mode:
Es el modo de operación principal en un sistema operativo moderno que utiliza el concepto de protección de memoria. En este modo el núcleo o kernel del sistema operativo se ejecuta con privilegios máximos y acceso completo a los recursos del harware. Esto significa que tiene la capacidad de realizar operaciones críticas y acceder a áreas de memoria restringidas que no están disponibles para las aplicaciones en modo usuario.

|Criterios|User Mode|Kernel Mode|
|---------|---------|-----------|
|**Acceso a recursos**|En el modo de usuario, el programa de aplicación no tiene acceso directo a los recursos del sistema ya que se debe hacer una llamada al sistema. |En el modo kernel, el programa tiene acceso directo y sin restricciones a los recursos del sistema.|
|**Interrupciones**|En el modo de usuario, un solo proceso falla si ocurre una interrupción.|En el modo Kernel, todo el sistema operativo podría disminuir si se produce una interrupción.|
|**Modos**|El modo de usuario también se conoce como modo no privilegiado, modo restringido o modo esclavo.|El modo de kernel también se conoce como modo maestro, modo privilegiado o modo de sistema.|
|**Espacio de dirección virtual**|En el modo de usuario, todos los procesos obtienen espacio de dirección virtual separado.|En el modo kernel, todos los procesos comparten un solo espacio de dirección virtual.|
|**Restricciones**|Si bien el modo de usuario necesita acceder a los programas del kernel ya que no puede acceder directamente a ellos.|Como el modo kernel puede acceder tanto a los programas de usuario como a los programas de kernel, no hay restricciones.|
|**Valor de bit de modo**|El bit de modo del núcleo es 1|El bit de modo del núcleo es 0|
|**Choque del sistema**|En el modo de usuario, se puede recuperar un bloqueo del sistema simplemente reanudando la sesión.|Un bloqueo del sistema en modo kernel es severo y hace las cosas más complicadas.|
|**Acceso**|Los programas de usuario pueden acceder y ejecutarse en este modo para un sistema determinado.|	Solo se permite la funcionalidad esencial para operar en este modo.|
|**Funcionalidad**|El modo de usuario es un modo de visualización estándar y típico, lo que implica que la información no se puede ejecutar por sí sola o hacer referencia a ningún bloque de memoria; necesita una interfaz de protocolo de aplicación ( API ) para lograr estas cosas.|El modo kernel puede referirse a cualquier bloque de memoria en el sistema y también puede dirigir la CPU para la ejecución de una instrucción, lo que lo convierte en un modo muy potente y significativo.|
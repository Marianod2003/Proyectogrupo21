# Issues Branchs

## 1) Identificar la ISSUE

Es necesario que todas las modificaciones al codigo (documentacion, frontend, backend) estén referenciadas a una issue en GitHub. No se debe trabajar por fuera de las issues. Si no se puede identificar la issue hay dos alternativas: O bien crearla como nueva (si o si referida a una US-User Story existente, con el número de TK siguiente a las ya existentes en esa US) y cuidando de no generar issues duplicadas, o bien consultar en el grupo de WhatsApp.<br/>
Al momento de buscar las issues conviene hacerlo desde la vista del proyecto, empezando por la vista de [User Stories]

## 2) Ingresar a la issue elegida

Para ello hacer click en la issue del proyecto, ahi muestra un resumen, ir al link de la derecha "Open in new tab" y abrirá la issue completa en una nueva pestaña. En la issue, en el panel lateral, en "Development" hacer click en "Create a branch". Ahi propone un nombre automático, por ejemplo **Branch name = 1-us-01-redactar-un-informe-principal**, si se lo modifica no tocar la primera parte (el numero de issue para GitHub y el numero de issue para nosotros). Puede convenir acortar un poco el nombre para facilitar su lectura y escritura, y puede convenir colocarle un numero al final para referencias diferentes ramas de la misma TK. **No usar** ramas anteriores, siempre usar una **nueva** rama, renombrar con un numero al final para tener siempre una nueva. 
## 3) Trabajar sobre la rama en local

A continuación se describen los comandos para trabajar en consola local en nuestras computadoras. Cuando se empieza a trabajar en la issue es importante verificar que todo esté bien antes de hacer nada. Hay que estar ubicados en la rama de desarrollo "main" y hacer un **pull** antes de pasarse a la rama particular. Si se vuelve a trabajar otro dia en el mismo tema, antes de subir los cambios, igualmente conviene volver a traer la "main" por las dudas otro compañero haya hecho cambios que afecten en lo que estoy trabajando.

    $ cd <al directorio base donde se ubica el repo local>
    $ git checkout main
    $ git pull
    $ git status
        En la rama main
        Tu rama está actualizada con 'origin/main'.
        nada para hacer commit, el árbol de trabajo está limpio

Si hay algún tipo de error en lo anterior (archivos en color rojo) lo mas coneveniente es renombrar ese directorio (por las dudas) y volver a clonar desde cero el repo. En lo que sigue se usa el ejemplo de la tarea "1-us-01-redactar-un-informe-principal", eso será diferente en cada caso, igualmente verificar siempre que se está trabajando sobre la issue correcta (en base al número de la tknn), ya que en algún momento pueden haber varias ramas particulares que estén activas.

    $ git fetch origin
    $ git branch
        * main
        1-us-01-redactar-un-informe-principal

    $ git checkout 1-us-01-redactar-un-informe-principal
        Rama '1-us-01-redactar-un-informe-principal' configurada para hacer seguimiento a la rama remota '1-us-01-redactar-un-informe-principal' de 'origin'.
        Cambiado a nueva rama '1-us-01-redactar-un-informe-principal'

    $ git pull
    $ git status
        En la rama 1-us-01-redactar-un-informe-principal
        Tu rama está actualizada con '1-us-01-redactar-un-informe-principal'.
        nada para hacer commit, el árbol de trabajo está limpio

    $ git branch
        * 1-us-01-redactar-un-informe-principal
        main

Luego se hacen todos los cambios deseados en los archivos. Puede convenir COPIAR los ARCHIVOS a un directorio trabajo EXTERNO, luego EDITAR ARCHIVOS, y finalmente COPIAR los ARCHIVOS MODIFICADOS devuelta al directorio donde está el repo. Luego se cierra el commit:

    $ git add ....     <-- para agregar archivos modificados
    $ git rm ....      <-- para borrar archivos
    $ git mv ....      <-- para cambiar de lugar archivos
    $ git add -A       <-- incorpora modif., agregados, borrados todo a la vez
    $ git status
         Cambios a ser confirmados:
         ....... verificar que todo esté bien y todos los archivos en color verde
    $ git commit -m '... mensaje ....'

Se suben los cambios al repo (se puede subir mas de un commit)

    $ git push -u origin 1-us-01-redactar-un-informe-principal 
        Username for 'https://github.com': ...........
        Password for 'https://......@github.com':  ... PAT(Personal Access Token) ....

Para ver como generar ese token PAT ver https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token




## 6) Volver a la rama "main" y actualizarla en local

Al final, para que nos quede todo bien en nuestra computadora local:

    $ cd <al directorio base donde se ubica el repo>
    $ git checkout origin main
    $ git pull                <-- debe traer el ultimo commit que hice
    $ git status

Finalmente se debe borrar la rama temporal de trabajo local (que ya no se va a usar).

 
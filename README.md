# Globos-con-mensajes
Este proyecto intenta mostrar mensajes enviados a traves de una pagina web en un videomapping controlado por Resolume que proyecta videos y un patch de processing que contiene los mensajes enviados en la pagina.

Este proceso caotico e interesante duro aproximadamente 2 semanas y a pesar de conseguir los resultados tecnicos bastante rapido las pruebas esteticas no fueron las suficientes para mostrar resultados perfectos, a pesar que el sistema logro funcionar bastante bien.

El proyecto consto de 6 pasos:
<ul>
<li>1. Desarrollo de la pagina web, con HTML, CSS y PHP.</li>
<li>2. Desarrollo de las visuales en el patch de Processing.</li>
<li>3. Consultar a traves de MySQL los mensajes enviados y descargarlos en un archivo .json a traves de la base de datos  en phpmyadmin.</li>
<li>4. Lograr que el Patch en processing levante el archivo .json lo cual fue un problema porque la libreria solo admite archivos perfectamente ordenadose iterados asi que no se pudo lograr un sistema totalmente automatizado, ya que phpmyadmin tiene palabras que la libreria no admite. De todas maneras se logro.</li>
<li>5. Lograr que el Patch de Processing con los mensajes llegue a Resolume Arena, un controlador de proyecciones, esto se pudo a traves de otra libreria de procesing (y tambien un programa) llamado Spout el cual conecta estas aplicaciones.</li>
<li>6. Controlar la proyeccion del Patch en processing y Videos de archivo en simultaneo a traves de Resolume Arena. </li>
</ul>

Si quieren pruebas de como funciono aqui esta el link: https://youtu.be/nbAkta2DEIc
Debido a que lo hice en visperas al mundial de futbol pedi que los mensajes fueran de apoyo a la Seleccion Argentina y estos fueron proyectados sobre videos de los momentos historicos de ella. :) 

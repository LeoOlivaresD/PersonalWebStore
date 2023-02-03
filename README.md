# PersonalWebStore
[![Screenshot-144.png](https://i.postimg.cc/9MqB2t1T/Screenshot-144.png)](https://postimg.cc/5YbzqzhN)
Empresa dedicada a la elaboración de sitios webs según la necesidad del cliente
Nombre: Leonardo Olivares
Proyecto: Personal Web Store
Descripcion:
El proyecto fue estructurado a traves de Spring Fragmework MVC, conectado a base de datos "personal_web_store" por medio de JPA.
A demas esta restringido por medio del Framework Spring Security implementado en su pagina de login.
Por ultimo agregar que en este caso en particular se ocupo Tomcat server 9.0.68 por temas de compatiblidad con otras librerias.
La aplicacion consta de 8 paginas navegables entre si por medio de un menu de opciones, el cual nos llevara a la seccion indicada, a excepción de un enlace a un sitio externo donde nos revelaran las "ventajas de tener una tienda virtual".
Entre esas paginas tenemos la seccion de "registrar usuario", "tipos de web" donde presentamos la estructura del sitio que se desea comprar, por otra parte tenemos la seccion de "galeria" la cual estara disponible solo para usuarios registrados en la pagina web ya que es aqui donde se pueden apreciar algunos proyectos realizados para otras empresa.Y no menos importante, la pagina de contacto, en donde nuestros clientes haran sus respectivas consultas o sugerencias a nuestros servicios.
En cuanto a la navegacion completa de la aplicacion necesitaremos entrar con un usuario que tenga rol de ADMIN, el cual nos permitira revelar principalmente todas las consultas realizadas a travez de nuestro formulario de contacto y a demas ver la lista de usuarios registrados en nuestra base de datos.Estos usuario son 2:
usuario: user , contraseña: 1234 tipo ADMIN
usuario: leo , contraseña: 1234 tipo ADMIN
Por ultimo cabe destacar que las animaciones se lograron gracias una libreria externa personalizada la cual es llamada en el head de cada pagina utilizada.

<%-- 
    Document   : ConsultaUsuario
    Created on : 13 sept 2022, 16:57:40
    Author     : VICTOR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="/Alcaldia_pse/estilos/Consulta.css">
    </head>
    <body>
        <header>
            <div class="logo">
                <img src="/Alcaldia_pse/imagenes/descarga.png" alt="Bandera Alcaldía De Unguía">
                <h2 class="nombreEmpresa">
                    Alcaldía De Unguía Chocó
                </h2>
                <br>
            </div>
            <div>
                <nav id="nav1">
                    <a href="/Alcaldia_pse/PaginaPrincipalAdministrador.jsp"><b>Inicio</b></a>
                    <a href="http://www.unguia-choco.gov.co/alcaldia/mision-y-vision"><b>Quienes Somos</b></a>
                    <a href="http://www.unguia-choco.gov.co/peticiones-quejas-reclamos"><b>PQRS</b> </a> 
                    <a href="/Alcaldia_pse/Consulta/ConsultarUsuarioActivo.jsp"><button>Consultar</button></a>
                    <a href="/Alcaldia_pse/Consulta/ActualizarUsuario.jsp"><button>Actualizar</button></a>
                    <a href="/Alcaldia_pse/Consulta/ActualizarUsuario.jsp"><button>Eliminar</button></a>
                    <a href="/Alcaldia_pse/index.jsp"><button>Cerar</button></a>
                </nav>
        </header>
        <br>
        <section id="sec1">
            <article>
                    <br>
                    <h3 id="h31">Nuevo Usuario</h3>
                    <br>
                    <br>
                    <div>
                        <form id="form1" action="/Alcaldia_pse/AdmInsertaUsuario?accion=Registrar" method="post">

                            <input class="controls" type="text" name="Usu_Cedula" id="documento" placeholder="Ingrese su Documento Identificación">
                            <br>
                            <input class="controls" type="text" name="Usu_Nombre" id="nombres" placeholder="Ingrese su Nombre">
                            <br>
                            <input class="controls" type="text" name="Usu_Apellido" id="apellidos" placeholder="Ingrese su Apellido">
                            <br>
                            <input class="controls" type="number" name="Usu_Celular" id="celular" placeholder="Ingrese su Celular">
                            <br>
                            <input class="controls" type="email" name="Usu_Correo" id="correo" placeholder="Ingrese su Coreeo">
                            <br>
                            <input class="controls" type="text" name="Usu_Direccion" id="direccion" placeholder="Ingrese su Dirección">
                            <br>
                            <input class="controls" type="password" name="Usu_Contrasena" id="contraseña" placeholder="Ingrese su Contraseña">

                            <button class="boton" type="submit">Registrar</button>
                            <p id="p6">Estoy de acuerdo <a id="at" href="#">Terminos y Condiciones</a></p>
                            <p id="p6"><a id="at" href="/Alcaldia_pse/Inicio_sesion/Login.jsp">¿Ya Tengo Cuenta?</a></p>
                            <div>
                                <%
                                    if (request.getAttribute("mensaje") != null) {
                                        out.print("<div id='mensaje'>" + request.getAttribute("mensaje") + "</div>");
                                    }
                                %>
                            </div>
                        </form>
                    </div>


            </article>
        </section>


        <footer id="foo1">
            <div id="div3">
                <p><h6 class="h43">
                    <br
                        Alcaldía Municipal de Unguía en Chocó
                        <br>
                    Dirección: CALLE 2 CRR 4 - 5
                    <br>
                    Horario de atención: 08:00AM - 12:00PM y de 02:00PM - 06:00PM
                    <br>
                    Teléfono Conmutador:
                    <br>
                    Teléfono móvil: 3026674652
                    <br>
                    Línea de atención gratuita: .
                    <br>
                    Correo institucional: alcaldia@unguia-choco.gov.co
                    </h>
                    </div>

                    <div id="div4">
                        <img id="img4" src="/Alcaldia_pse/imagenes/Unidos.jpeg" alt="Unidos es Posibre">

                    </div>
                    <div id="div5">
                        <p><h6 class="h43" >
                            <br>
                            Link de Interes
                            <br>
                            procuraduría: <a href="https://www.procuraduria.gov.co/portal/index.jsp">https://www.procuraduria.gov.co/portal/index.jsp</a>
                            <br>
                            Contraloría: <a href="https://www.contraloria.gov.co/">https://www.contraloria.gov.co/</a>
                            <br>
                            Registrdurí: <a href="https://www.registraduria.gov.co/">https://www.registraduria.gov.co/</a>
                            <br>
                            Policía Nacional: <a href="https://www.policia.gov.co/">https://www.policia.gov.co/</a>
                            <br>
                            Alcaldía Unguía: <a href="http://www.unguia-choco.gov.co/">http://www.unguia-choco.gov.co/</a>
                        </h6></p>
                    </div >

                    <div id="div4">
                        <img id="img9" src="/Alcaldia_pse/imagenes/Colombia.jpg" alt="Colombia">
                    </div>

                    <div id="div4">
                        <img id="img9" src="/Alcaldia_pse/imagenes/16509.jpg" alt="Colombia">
                    </div>
                    <div id="div6">
                        <a href="https://www.facebook.com/unguia.choco"> <img id="img5" src="/Alcaldia_pse/imagenes/facebook.webp" alt="Facebook"></a>
                        <a href="https://www.facebook.com/unguia.choco"> <img id="img6" src="/Alcaldia_pse/imagenes/Twitter1.png" alt="Twitter"></a>
                        <a href="https://www.youtube.com/channel/UCUj90wUwyK-Ami8LKjYHQng"> <img id="img7" src="/Alcaldia_pse/imagenes/youtube.webp" alt="YouTube"></a>


                    </div>
                    </footer>
            </div>
    </body>
</body>
</html>

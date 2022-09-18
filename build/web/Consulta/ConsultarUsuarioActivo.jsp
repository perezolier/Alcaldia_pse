<%-- 
    Document   : ConsultarUsuarioActivo
    Created on : 16 sept 2022, 0:32:26
    Author     : VICTOR
--%>

<%@page import="java.util.List"%>
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
                    <a href="/Alcaldia_pse/Consulta/ConsultaUsuario.jsp"><button>Nuevo</button></a> 
                    <a href="/Alcaldia_pse/Consulta/ActualizarUsuario.jsp"><button>Actualizar</button></a>
                    <a href="/Alcaldia_pse/Consulta/EliminarUsuario.jsp"><button>Eliminar</button></a>
                    <a href="/Alcaldia_pse/index.jsp"><button>Cerar</button></a>
                </nav>
        </header>
        <br>
        <section id="sec1">
            <article>
                <br>
                <h3 id="h31">Consultar Usuario</h3>
                <br>
                <br>
                <div>
                    <form id="form1" action="/Alcaldia_pse/ValidarRegistroUsuario?accion=Consultar" method="post">
                        <div>
                            <label for="">Opción de Consulta </label><br>  
                            <input type="radio" name="opcion" id="ide" value="1" checked>
                            <label for="ide">Identificación</label><br>
                            <input type="radio" name="opcion" id="ide" value="2">
                            <label for="ide">ID</label><br>
                        </div>
                        <div>
                            <label for="">Valor a Consultar</label>
                            <input type="text" name="valor" required autocomplete="off">
                            <!-- <input class="controls" type="text" name="valor" id="documento" placeholder="Digite Identificación o ID" required autocomplete="off">  -->
                        </div>
                        <div class="divLabel">
                            <button class="boton" type="submit">Consultar</button> 
                        </div>
                        <br>
                        <div>
                    </form>
                    <table id="tabla33">
                        <thead>
                            <tr> 
                                <th>ID</th><
                                <th>CEDULA</th>
                                <th>NOMBRE</th>
                                <th>APELLIDO</th>
                                <th>CELULAR</th>
                                <th>CORREO</th>
                                <th>DIRECION</th>
                                <th>CONTRASEÑA</th>
                            </tr>
                        </thead> 
                        <body>
                            <%

                                List<Modelo.usuarioVO> listaUsuarios;
                                listaUsuarios = (List) request.getAttribute("listaUsuarios");
                                if (listaUsuarios != null) {
                                    if (listaUsuarios.size() > 0) {
                                        for (Modelo.usuarioVO pac : listaUsuarios) {
                                            out.print("<tr>");
                                            out.print("<td>" + pac.getId_Usu() + "</td>");
                                            out.print("<td>" + pac.getUsu_Cedula() + "</td>");
                                            out.print("<td>" + pac.getUsu_nombre() + "</td>");
                                            out.print("<td>" + pac.getUsu_Apellido() + "</td>");
                                            out.print("<td>" + pac.getUsu_Celular() + "</td>");
                                            out.print("<td>" + pac.getUsu_Correo() + "</td>");
                                            out.print("<td>" + pac.getUsu_Direccion() + "</td>");
                                            out.print("<td>" + pac.getUsu_contrasena() + "</td>");
                                            out.print("</tr>");
                                        }
                                    }
                                } else {
                                    out.print("<tr>");
                                    out.print("<td colspan='8'>No se encontro Usuario Registrado</td>");
                                    out.print("</tr>");
                                }
                            %>
                        </body> 
                    </table>
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

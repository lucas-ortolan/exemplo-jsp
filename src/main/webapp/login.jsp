<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8" %>
<%@page errorPage="erro.jsp" isErrorPage="false" %>

<jsp:useBean class="utfpr.ct.dainf.if6ae.exemplos.UsuarioBean" id="info" scope="session"/>
<jsp:setProperty name="info" property="*" />

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <title>Login</title>
        <link rel='stylesheet' href='css/geral.css' type='text/css'>
    </head>
    <body>
        <h1>LOGIN</h1>
        <form action='login.jsp' method='post'>
            <table>
                <tr>
                    <td> Name: <input type='text' name='name' size='40' value='${info.name}'
                    maxlength='40'></td>
                </tr>
                <tr>
                    <td> Password: <input type='text' name='password' size='40' value='${info.password}'>
                </tr>
            </table>
            <br>
            <br>
            <input type='submit' value='Ok'/> <input style="margin-left: 5em" type='reset' value='Limpar'/>
        </form>
    </body>
</html>

<% if (request.getMethod().equals("POST")) {
    if (info.getPassword().equals("admin") && info.getName().equals("admin")) {
        response.sendRedirect("/exemplo-jsp/logado.jsp");
    } else {
        response.sendRedirect("/exemplo-jsp/login_errado.jsp");
    }
    
} %>

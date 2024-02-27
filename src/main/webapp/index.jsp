<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="modelo.Libro" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="CSS/styles.css">
<title>Insert title here</title>

</head>
<body>
<% String error = (String)request.getAttribute("error");
	if(error!=null){%>
		<p><%=error %></p>
	<%} %>
	
<% out.println("Hola mundo Carmen"); %>

<% String info = (String)request.getAttribute("info");
	if(info!=null){%>
		<p><%=info%></p>
	<%} %>
	    <table>
        <tr>
            <th><strong>ISBN</strong></th>
            <th><strong>Título</strong></th>
            <th><strong>Autor</strong></th>
        </tr>

        <% ArrayList<Libro> libros=(ArrayList<Libro>)request.getAttribute("libros");
            if(libros != null){
                for(Libro l:libros){ %>
                    <tr>
                        <td><%=l.getIsbn() %></td>
                        <td><%=l.getTitulo() %></td>
                        <td><%=l.getAutor() %></td>
                    </tr>
                <%}
            }%>
    </table>
    <div>
        <form action="insertar" method="post">
            <label for="isbn">
                ISBN:
                <input type="text" id="isbn" name="isbn" placeholder="ISBN..">
            </label>
            <label for="titulo">
                Título:
                <input type="text" id="titulo" name="titulo" placeholder="Título..">
            </label>
            <label for="autor">
                Autor:
                <input type="text" id="autor" name="autor" placeholder="Autor..">
            </label>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
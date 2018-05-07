<%
 /**matar session**/
      
      session.invalidate(); 
       RequestDispatcher dispatcher;
      dispatcher = request.getRequestDispatcher("/login.jsp"); 
       dispatcher.forward(request, response);
%>
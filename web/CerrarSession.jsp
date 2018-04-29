<%
 /**matar session**/
      
      session.invalidate(); 
       RequestDispatcher dispatcher;
      dispatcher = request.getRequestDispatcher("/index.jsp"); 
       dispatcher.forward(request, response);
%>
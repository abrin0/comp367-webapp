<%@ page import="java.time.LocalTime" %>
<html>
  <body>
    <%
      String name = "Abrin";
      int hour = LocalTime.now().getHour();
      String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
    %>
    <h1><%= greeting %>, <%= name %>, Welcome to COMP367</h1>
  </body>
</html>
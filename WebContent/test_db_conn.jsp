<!DOCTYPE html>
<html>
  <head>
    <title>Client Form</title>
  </head>
  <body>
    <h1>Client Form</h1>
    <form action="insert.jsp" method="post">
      <label for="name">Name:</label>
      <input type="text" name="name" id="name"><br><br>
      <label for="surname">Surname:</label>
      <input type="text" name="surname" id="surname"><br><br>
      <label for="email">Email:</label>
      <input type="email" name="email" id="email"><br><br>
      <label for="phone">Phone:</label>
      <input type="tel" name="phone" id="phone"><br><br>
      <input type="submit" value="Submit">
    </form>
  </body>
</html>

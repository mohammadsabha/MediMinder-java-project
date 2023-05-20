<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>java</title>
    <!-- <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<style>
  *{
    margin: 0;
    padding: 0;
  }
  form{
    width: 40%;
    height: 60%;
    /* margin-left: 20px; */
  }

  main{
    width: 100%;
    display: flex;
    justify-content: space-evenly;
  }
  .left{
    width: 40%;

  }
  .right{
    width: 40%;
  }
</style>
<body>

  <main>

  <div class="left">
    <h2>add new clinic</h2>
   <form:form action="/user/new" method="post" modelAttribute="user">
    
    <div class="mb-3">
      <label class="form-label"> full name:</label>
      <form:input path="name" type="text" class="form-control" />
      <form:errors path="name" class="text-danger" />
      
    </div>
  
    <div class="mb-3">
      <label class="form-label"  >email:</label>
      <form:input path="email" type="text" class="form-control" />
      <form:errors path="email" class="text-danger" />

    </div>

    <div class="mb-3">
      <label class="form-label"  >phone:</label>
      <form:input path="phone" type="text" class="form-control" />
      <form:errors path="phone" class="text-danger" />

      
    </div>

    
    <div class="mb-3">
      <label class="form-label"  >address:</label>
      <form:input path="address" type="text" class="form-control" />
      <form:errors path="address" class="text-danger" />

      
    </div>
  
    <div class="mb-3">
      <label class="form-label"  >password:</label>
      <form:input path="password" type="password" class="form-control" />
      <form:errors path="password" class="text-danger" />

    </div>

    <div class="mb-3">
      <label class="form-label"  >confirm:</label>
      <form:input path="confirm" type="password" class="form-control" />
      <form:errors path="confirm" class="text-danger" />
    </div>


  <button type="submit" class="btn btn-primary">Submit</button>
  </form:form>
</div>

<div class="right">
  <h2>All Clinics</h2>
  <table class="table">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">First</th>
        <th scope="col">Last</th>
        <th scope="col">Handle</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Mark</td>
        <td>Otto</td>
        <td>@mdo</td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Jacob</td>
        <td>Thornton</td>
        <td>@fat</td>
      </tr>
      <tr>
        <th scope="row">3</th>
        <td colspan="2">Larry the Bird</td>
        <td>@twitter</td>
      </tr>
    </tbody>
  </table>
</div>
   
</main>
   
   
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.QuizApplication.repository.QuizRepository" %>
<%@ page import="com.QuizApplication.repository.QuestionRepository" %>
<%@ page import="com.QuizApplication.model.Quiz" %>
<%@ page import="com.QuizApplication.model.Question" %>
<%@ page import="com.QuizApplication.exception.BusinessException" %>

<html>
 <head>
    <!-- This will make the table look nicer -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Quiz Application!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://unpkg.com/bootstrap-table@1.21.4/dist/bootstrap-table.min.css">
    <link rel="stylesheet" href="styles.css">
  </head>
<body>

<style>

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #99d9ea;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  font-weight: bold;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color: #FFFFFF;
}
</style>


<ul>
  <li><a href="welcomeUser.jsp">Back</a></li>
  <li><a href="toFindQuestionById.jsp">Search by Number</a></li>
  <li><a href="toAddQuestion.jsp">Add</a></li>
  <li><a href="toUpdateQuestion.jsp">Update</a></li>
  <li><a href="toDeleteQuestion.jsp">Delete</a></li>

  <li style="float:right"><a href="welcomeUser.jsp">Homepage</a></li>


</ul>
<br>
<br>
<br>
<br>

<div style="  width: 70%; margin: 0 auto; display:block; height: 500px; overflow-y:scroll; position: relative; display: flex; background-color: rgba(153,217,234, 0.9); text-color: white;"

<table>

   <table border="1" class="table table-striped table-hover w-50 p-3">

       <tr>


           <th>Number</th>
           <th>Question</th>
           <th>Category</th>
           <th>Difficulty</th>
           <th>Answer 1</th>
           <th>Answer 2</th>
           <th>Answer 3</th>
           <th>Answer 4</th>
           </tr>
       <%
                   QuestionRepository questionRepo = new QuestionRepository();
                   List<Question> questionList = questionRepo.getAllQuestions();
                   for (Question question : questionList) {
               %>
                   <tr>
                       <td><%= question.getId() %></td>
                       <td><%= question.getQuestionDescription() %></td>
                       <td><%= question.getCategory() %></td>
                       <td><%= question.getDifficulty() %></td>
                       <td><%= question.getCorrectAnswer() %></td>
                       <td><%= question.getIncorrectAnswer1() %></td>
                       <td> <%= question.getIncorrectAnswer2() %></td>
                       <td> <%= question.getIncorrectAnswer3() %></td>
                   </tr>
               <% } %>
</table>
  </div>

</body>
</html>
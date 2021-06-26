<%@page import="java.util.List" %>
<%@page import="com.tech.blog.helper.ConnectionProvider" %>
<%@page import="com.tech.blog.dao.PostDao" %>
<%@page import="com.tech.blog.entities.Post" %>
<div class="row">
<%
PostDao d=new PostDao(ConnectionProvider.getConnection()); 
List<Post> posts=d.getAllPosts();
for(Post p:posts)
{
%>
<div class="col-md-4 mt-2">
<div class="card  bg-secondary mb-3" style="max-width: 18rem;">
<div class="card-header text-uppercase bg-transparent border-black bg-primary mb-3"><h4><%=p.getTitle() %></h4></div>
<div class="card-body">
<h6 class="card-title text-black"><b><u>Content</u></u></b></h6>
<p class="card-title text-white bg-dark"><%=p.getpContent()%></p>
<h6 class="card-title "><b><u>Code</u></b></h6>
<p class="card-text text-white bg-dark"><%=p.getpCode() %></p>
</div>
<button class="btn border-black text-secondary"><a href="https://en.wikipedia.org/wiki/List_of_emerging_technologies">Know more</a></button>
</div>
</div>
<%
}
%>
</div>





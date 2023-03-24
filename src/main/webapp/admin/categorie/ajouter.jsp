<%@page import="com.lus.dawm.utils.DataStore"%>
<%@page import="com.lus.dawm.models.Categorie"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter Categorie | page</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<% List<Categorie> categories = DataStore.listCategories(); %>
<form action="<% request.getContextPath(); %>/tp1/ajouter/categorie" method="POST">
<div class="min-h-screen bg-gray-100 py-6 sm:py-12">
	<div class="relative py-3 sm:max-w-xl sm:mx-auto">
		<div
			class="absolute inset-0 bg-gradient-to-r from-blue-300 to-blue-600 shadow-lg transform -skew-y-6 sm:skew-y-0 sm:-rotate-6 sm:rounded-3xl">
		</div>
		<div class="relative px-4 py-10 bg-white shadow-lg sm:rounded-3xl sm:p-20">
			<div class="max-w-md mx-auto">
				<div>
					<h1 class="text-2xl font-semibold">Ajouter un categorie</h1>
				</div>
				<div class="divide-y divide-gray-200">
					<div class="py-8 text-base leading-6 space-y-4 text-gray-700 sm:text-lg sm:leading-7">
						<div class="relative">
							<input autocomplete="off" id="designation" name="designation" type="text" class="peer placeholder-transparent h-10 w-full border-b-2 border-gray-300 text-gray-900 focus:outline-none focus:borer-rose-600" placeholder="designation..." required/>
							<label for="designation" class="absolute left-0 -top-3.5 text-gray-600 text-sm peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-440 peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm">Designation</label>
						</div>
						<div class="relative">
							<input autocomplete="off" id="description" name="description" type="text" class="peer placeholder-transparent h-10 w-full border-b-2 border-gray-300 text-gray-900 focus:outline-none focus:borer-rose-600" placeholder="description..." required/>
							<label for="description" class="absolute left-0 -top-3.5 text-gray-600 text-sm peer-placeholder-shown:text-base peer-placeholder-shown:text-gray-440 peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm">Description</label>
						</div>
						<div class="relative">
							<label for="underline_select" class="sr-only">Categorie</label>
							<select id="underline_select" class="block py-2.5 px-0 w-full text-sm text-gray-500 bg-transparent border-0 border-b-2 border-gray-200 appearance-none dark:text-gray-400 dark:border-gray-700 focus:outline-none focus:ring-0 focus:border-gray-200 peer" name="categorie">
							    <option value="-1" selected>Selection categorie</option>
							    <%
							    for(Categorie categorie: categories){
							    	%>
							    	<option value="<%=categorie.getId() %>" class="text-gray-600 text-sm  peer-placeholder-shown:top-2 transition-all peer-focus:-top-3.5 peer-focus:text-gray-600 peer-focus:text-sm"><%= categorie.getDesignation() %></option>
							    	<%
							    }
							    %>
							</select>
						</div>
						<div class="relative">
							<button type="submit" class="bg-blue-500 text-white rounded-md px-2 py-1">Ajouter categorie</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</form>
</body>
</html>
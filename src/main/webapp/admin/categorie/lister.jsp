<%@page import="com.lus.dawm.models.Categorie"%>
<%@page import="java.util.List"%>
<%@page import="com.lus.dawm.utils.DataStore"%>
<%@page import="com.lus.dawm.classes.BD"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Categories | page</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="body bg-white dark:bg-[#0F172A]">
<% List<Categorie> categories = DataStore.listCategories(); %>
	<jsp:include page="../../layouts/navbar.jsp"></jsp:include>
	<jsp:include page="../../layouts/sidebar.jsp"></jsp:include>
	<div
		class="content ml-12 transform ease-in-out duration-500 pt-20 px-2 md:px-5 pb-4 ">
		<nav
			class="flex px-5 py-3 text-gray-700  rounded-lg bg-gray-50 dark:bg-[#1E293B] "
			aria-label="Breadcrumb">
			<ol class="inline-flex items-center space-x-1 md:space-x-3">
				<li class="inline-flex items-center"><a
					href="<%request.getContextPath();%>/tp1/admin/dashboard.jsp"
					class="inline-flex items-center text-sm font-medium text-gray-700 hover:text-gray-900 dark:text-gray-400 dark:hover:text-white">
						<svg class="w-4 h-4 mr-2" fill="currentColor" viewBox="0 0 20 20"
							xmlns="http://www.w3.org/2000/svg">
							<path
								d="M10.707 2.293a1 1 0 00-1.414 0l-7 7a1 1 0 001.414 1.414L4 10.414V17a1 1 0 001 1h2a1 1 0 001-1v-2a1 1 0 011-1h2a1 1 0 011 1v2a1 1 0 001 1h2a1 1 0 001-1v-6.586l.293.293a1 1 0 001.414-1.414l-7-7z"></path></svg>
						Home
				</a></li>
				<li>
					<div class="flex items-center">
						<svg class="w-6 h-6 text-gray-400" fill="currentColor"
							viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
							<path fillRule="evenodd"
								d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
								clipRule="evenodd"></path></svg>
						<p
							class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white">Admin</p>
					</div>
				</li>
				<li>
					<div class="flex items-center">
						<svg class="w-6 h-6 text-gray-400" fill="currentColor"
							viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
							<path fillRule="evenodd"
								d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
								clipRule="evenodd"></path></svg>
						<p
							class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white">Categories</p>
					</div>
				</li>
			</ol>
		</nav>
		<div class="flex flex-col items-end mb-6">
			<div
				class=" p-4 m-4 text-sm text-blue-700 bg-blue-100 rounded-lg dark:bg-blue-200 dark:text-blue-800"
				role="alert">
				<span class="font-medium">Si vous voullez d'ajouter un
					nouveau categorie <a
					href="<%request.getContextPath();%>/tp1/admin/categorie/ajouter.jsp"><span
						class="bg-blue-500 text-white px-4 py-2 rounded ml-4">Click
							ici</span></a>
				</span>
			</div>
		</div>
		<p class="italic font-xs underline mb-4"><%=categories.size()%>
			categories
		</p>
		<section class="bg-gray-100">
			<div
				class="mx-auto grid max-w-6xl  grid-cols-1 gap-6 p-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
				<%
				for (Categorie categorie: categories) {
				%>
				<article
					class="rounded-xl bg-white p-3 shadow-lg hover:shadow-xl hover:transform hover:scale-105 duration-300 ">
					<div class="relative flex items-end overflow-hidden rounded-xl">
						<img src="https://source.unsplash.com/random/300x200"
							alt="Hotel Photo" />
					</div>

					<div class="mt-1 p-2">
						<h2 class="text-slate-700"><%=categorie.getDesignation()%></h2>
						<p class="mt-1 text-sm text-slate-400"><%=categorie.getDesignation()%></p>

						<div class="mt-3 flex items-end justify-between">
							<div
								class="flex items-center space-x-1.5 rounded-lg bg-red-400 px-4 py-1.5 text-white duration-100 hover:bg-red-600">
								<form
									action="<%request.getContextPath();%>/tp1/supprimer/categorie"
									method="POST">
									<input type="hidden" value="<%=categorie.getId()%>" name="indexCat" />
									<button type="submit" class="text-sm">Supprimer</button>
								</form>
							</div>
							<div
								class="flex items-center space-x-1.5 rounded-lg bg-blue-400 px-4 py-1.5 text-white duration-100 hover:bg-blue-600">
								<form
									action="<%request.getContextPath();%>/tp1/admin/categorie/edit.jsp"
									method="get">
									<% DataStore.setCategorie(categorie); %>
									<button type="submit" class="text-sm">Edit</button>
								</form>
							</div>
						</div>
					</div>
				</article>
				<%
				}
				%>
			</div>
		</section>
	</div>
</body>
</html>
<%@page import="com.lus.dawm.models.Categorie"%>
<%@page import="com.lus.dawm.utils.DataStore"%>
<%@page import="com.lus.dawm.dao.DAOProduit"%>
<%@page import="com.lus.dawm.models.Produit"%>
<%@page import="java.util.List"%>
<%@page import="com.lus.dawm.classes.BD"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Produits | page</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="body bg-white dark:bg-[#0F172A]">
	<% List<Produit> produits = DataStore.listProduits(); %>

	<jsp:include page="../../layouts/navbar.jsp"></jsp:include>
	<jsp:include page="../../layouts/sidebar.jsp"></jsp:include>
	<!-- CONTENT -->
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
							class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white">Produits</p>
					</div>
				</li>
			</ol>
		</nav>
		<div class="flex flex-col items-end mb-6">
			<div
				class=" p-4 m-4 text-sm text-blue-700 bg-blue-100 rounded-lg dark:bg-blue-200 dark:text-blue-800"
				role="alert">
				<span class="font-medium">Si vous voullez d'ajouter un
					nouveau produit <a
					href="<%request.getContextPath();%>/tp1/admin/produit/ajouter.jsp"><span
						class="bg-blue-500 text-white px-4 py-2 rounded ml-4">Click
							ici</span></a>
				</span>
			</div>
		</div>
		<p class="italic font-xs underline mb-4"><%= produits.size()%>
			produits
		</p>
		<section class="bg-gray-100 mt-10">
			<div
				class="mx-auto grid max-w-6xl  grid-cols-1 gap-6 p-6 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4">
				<%
				for (Produit produit : produits) {
				%>
				<article
					class="rounded-xl bg-white p-3 shadow-lg hover:shadow-xl hover:transform hover:scale-105 duration-300 ">
					<div class="relative flex items-end overflow-hidden rounded-xl">
						<img src="https://source.unsplash.com/random/300x200"
							alt="Hotel Photo" />
					</div>

					<div class="mt-1 p-2">
						<h2 class="text-slate-700"><%=produit.getDesignation()%></h2>
						<%
						if(produit.getCategories() != null){
							for(Categorie cat : produit.getCategories()){
								%>
								<p class="mt-1 text-sm text-slate-400"><%=cat.getDesignation()%></p>
								<%
								}
							}
						%>

						<div class="mt-3">
							<p class="text-lg font-bold text-blue-500 mb-3">$500</p>
							<form action="<%request.getContextPath();%>/tp1/ajouter/panier"
								method="POST">
								<div
									class="flex items-center space-x-1.5 rounded-lg bg-blue-500 px-4 py-1.5 text-white duration-100 hover:bg-blue-600">


									<input type="hidden" value="<%=produit.getId()%>"
										name="idpro_panier" />

									<svg xmlns="http://www.w3.org/2000/svg" fill="none"
										viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor"
										class="h-4 w-4">
							                <path stroke-linecap="round"
											stroke-linejoin="round"
											d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 00-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 00-16.536-1.84M7.5 14.25L5.106 5.272M6 20.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm12.75 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0z" />
							            </svg>

									<button class="text-sm">Ajouter au panier</button>

								</div>
							</form>
						</div>
						<div class="mt-1">
							<form
								action="<%request.getContextPath();%>/tp1/produit/supprimer"
								method="POST">
								<div
									class="flex items-center space-x-1.5 rounded-lg bg-red-500 px-4 py-1.5 text-white duration-100 hover:bg-red-600">


									<input type="hidden" value="<%=produit.getId()%>" name="idPro" />

									<svg class="h-4 w-4" viewBox="0 0 1024 1024" fill="#ffffff"
										class="icon" version="1.1" xmlns="http://www.w3.org/2000/svg"
										stroke="#ffffff">
									
										<g id="SVGRepo_bgCarrier" stroke-width="0" />
										
										<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
											stroke-linejoin="round" />
										
										<g id="SVGRepo_iconCarrier">
										
										<path
											d="M32 241.6c-11.2 0-20-8.8-20-20s8.8-20 20-20l940 1.6c11.2 0 20 8.8 20 20s-8.8 20-20 20L32 241.6zM186.4 282.4c0-11.2 8.8-20 20-20s20 8.8 20 20v688.8l585.6-6.4V289.6c0-11.2 8.8-20 20-20s20 8.8 20 20v716.8l-666.4 7.2V282.4z"
											fill="" />
										
										<path
											d="M682.4 867.2c-11.2 0-20-8.8-20-20V372c0-11.2 8.8-20 20-20s20 8.8 20 20v475.2c0.8 11.2-8.8 20-20 20zM367.2 867.2c-11.2 0-20-8.8-20-20V372c0-11.2 8.8-20 20-20s20 8.8 20 20v475.2c0.8 11.2-8.8 20-20 20zM524.8 867.2c-11.2 0-20-8.8-20-20V372c0-11.2 8.8-20 20-20s20 8.8 20 20v475.2c0.8 11.2-8.8 20-20 20zM655.2 213.6v-48.8c0-17.6-14.4-32-32-32H418.4c-18.4 0-32 14.4-32 32.8V208h-40v-42.4c0-40 32.8-72.8 72.8-72.8H624c40 0 72.8 32.8 72.8 72.8v48.8h-41.6z"
											fill="" />
										
										</g>
									
									</svg>

									<button class="text-sm">Supprimer Produit</button>

								</div>
							</form>
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
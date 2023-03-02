<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.lus.dawm.classes.BD"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard | page</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="body bg-white dark:bg-[#0F172A]">
	<jsp:include page="../layouts/navbar.jsp"></jsp:include>
	<jsp:include page="../layouts/sidebar.jsp"></jsp:include>
	<!-- CONTENT -->
	<div
		class="content ml-12 transform ease-in-out duration-500 pt-20 px-2 md:px-5 pb-4 ">
		<nav
			class="flex px-5 py-3 text-gray-700  rounded-lg bg-gray-50 dark:bg-[#1E293B] "
			aria-label="Breadcrumb">
			<ol class="inline-flex items-center space-x-1 md:space-x-3">
				<li class="inline-flex items-center"><a href="#"
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
						<a href="#"
							class="ml-1 text-sm font-medium text-gray-700 hover:text-gray-900 md:ml-2 dark:text-gray-400 dark:hover:text-white">Dashboard</a>
					</div>
				</li>
			</ol>
		</nav>
		<div class="flex flex-wrap items-center my-5 -mx-2">
			<div class="w-full lg:w-1/2 p-4">
				<a
					href="<%request.getContextPath();%>/tp1/admin/produit/ajouter.jsp">
					<div
						class="flex items-center flex-row w-full bg-gradient-to-r dark:from-cyan-500 dark:to-blue-500 from-indigo-500 via-purple-500 to-pink-500 rounded-md p-3">
						<div
							class="flex text-indigo-500 dark:text-white items-center bg-white dark:bg-[#0F172A] p-2 rounded-md flex-none w-8 h-8 md:w-12 md:h-12 ">
							<svg width="100px" height="100px" viewBox="0 0 24 24" fill="none"
								xmlns="http://www.w3.org/2000/svg" stroke="#3276c3">
	
							<g id="SVGRepo_bgCarrier" stroke-width="0" />
							
							<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
									stroke-linejoin="round" />
							
							<g id="SVGRepo_iconCarrier"> <path d="M8 12H16"
									stroke="#3276c3" stroke-width="1.5" stroke-linecap="round"
									stroke-linejoin="round" /> <path d="M12 16V8" stroke="#3276c3"
									stroke-width="1.5" stroke-linecap="round"
									stroke-linejoin="round" /> <path
									d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z"
									stroke="#3276c3" stroke-width="1.5" stroke-linecap="round"
									stroke-linejoin="round" /> </g>
							
						</svg>
						</div>
						<div
							class="flex flex-col justify-around flex-grow ml-5 text-white">
							<div class="text-xs whitespace-nowrap">Ajouter Produit</div>
						</div>
						<div class=" flex items-center flex-none text-white">
							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor"
								class="w-6 h-6">
                            <path strokeLinecap="round"
									strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                        </svg>

						</div>
					</div>
				</a>
			</div>
			<div class="w-full md:w-1/2 lg:w-1/2 p-4 ">
				<a
					href="<%request.getContextPath();%>/tp1/admin/categorie/ajouter.jsp">
					<div class="flex items-center flex-row w-full bg-gradient-to-r dark:from-cyan-500 dark:to-blue-500 from-indigo-500 via-purple-500 to-pink-500 rounded-md p-3">
						<div
							class="flex text-indigo-500 dark:text-white items-center bg-white dark:bg-[#0F172A] p-2 rounded-md flex-none w-8 h-8 md:w-12 md:h-12 ">
							<svg width="100px" height="100px" viewBox="0 0 24 24" fill="none"
								xmlns="http://www.w3.org/2000/svg" stroke="#3276c3">
	
							<g id="SVGRepo_bgCarrier" stroke-width="0" />
							
							<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
									stroke-linejoin="round" />
							
							<g id="SVGRepo_iconCarrier"> <path d="M8 12H16"
									stroke="#3276c3" stroke-width="1.5" stroke-linecap="round"
									stroke-linejoin="round" /> <path d="M12 16V8" stroke="#3276c3"
									stroke-width="1.5" stroke-linecap="round"
									stroke-linejoin="round" /> <path
									d="M9 22H15C20 22 22 20 22 15V9C22 4 20 2 15 2H9C4 2 2 4 2 9V15C2 20 4 22 9 22Z"
									stroke="#3276c3" stroke-width="1.5" stroke-linecap="round"
									stroke-linejoin="round" /> </g>
							
						</svg>
						</div>
						<div
							class="flex flex-col justify-around flex-grow ml-5 text-white">
							<div class="text-xs whitespace-nowrap">Ajouter Categorie</div>
						</div>
						<div class=" flex items-center flex-none text-white">
							<svg xmlns="http://www.w3.org/2000/svg" fill="none"
								viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor"
								class="w-6 h-6">
                            <path strokeLinecap="round"
									strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                        </svg>

						</div>
					</div>
				</a>
			</div>
			<div class="w-full md:w-1/2 lg:w-1/2 p-4">
				<div
					class="flex items-center flex-row w-full bg-gradient-to-r dark:from-cyan-500 dark:to-blue-500 from-indigo-500 via-purple-500 to-pink-500 rounded-md p-3">
					<div
						class="flex text-indigo-500 dark:text-white items-center bg-white dark:bg-[#0F172A] p-2 rounded-md flex-none w-8 h-8 md:w-12 md:h-12 ">
						<svg xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor"
							class="object-scale-down transition duration-500">
                        <path strokeLinecap="round"
								strokeLinejoin="round"
								d="M3.75 3v11.25A2.25 2.25 0 006 16.5h2.25M3.75 3h-1.5m1.5 0h16.5m0 0h1.5m-1.5 0v11.25A2.25 2.25 0 0118 16.5h-2.25m-7.5 0h7.5m-7.5 0l-1 3m8.5-3l1 3m0 0l.5 1.5m-.5-1.5h-9.5m0 0l-.5 1.5m.75-9l3-3 2.148 2.148A12.061 12.061 0 0116.5 7.605" />
                    </svg>
					</div>
					<div class="flex flex-col justify-around flex-grow ml-5 text-white">
						<div class="text-xs whitespace-nowrap">Consulter les
							produits aux panier</div>
					</div>
					<div class=" flex items-center flex-none text-white">
						<svg xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor"
							class="w-6 h-6">
                            <path strokeLinecap="round"
								strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                        </svg>

					</div>
				</div>
			</div>
			<div class="w-full md:w-1/2 lg:w-1/2 p-4">
				<div
					class="flex items-center flex-row w-full bg-gradient-to-r dark:from-cyan-500 dark:to-blue-500 from-indigo-500 via-purple-500 to-pink-500 rounded-md p-3">
					<div
						class="flex text-indigo-500 dark:text-white items-center bg-white dark:bg-[#0F172A] p-2 rounded-md flex-none w-8 h-8 md:w-12 md:h-12 ">
						<svg xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor"
							class="object-scale-down transition duration-500">
                        <path strokeLinecap="round"
								strokeLinejoin="round"
								d="M3.75 3v11.25A2.25 2.25 0 006 16.5h2.25M3.75 3h-1.5m1.5 0h16.5m0 0h1.5m-1.5 0v11.25A2.25 2.25 0 0118 16.5h-2.25m-7.5 0h7.5m-7.5 0l-1 3m8.5-3l1 3m0 0l.5 1.5m-.5-1.5h-9.5m0 0l-.5 1.5m.75-9l3-3 2.148 2.148A12.061 12.061 0 0116.5 7.605" />
                    </svg>
					</div>
					<div class="flex flex-col justify-around flex-grow ml-5 text-white">
						<div class="text-xs whitespace-nowrap">Consulter les
							produits vendus</div>
					</div>
					<div class=" flex items-center flex-none text-white">
						<svg xmlns="http://www.w3.org/2000/svg" fill="none"
							viewBox="0 0 24 24" strokeWidth={1.5} stroke="currentColor"
							class="w-6 h-6">
                            <path strokeLinecap="round"
								strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                        </svg>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
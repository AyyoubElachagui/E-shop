<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<aside
	class="w-60 -translate-x-48 fixed transition transform ease-in-out duration-1000 z-50 flex h-screen bg-[#1E293B] ">
	<!-- open sidebar button -->
	<div
		class="max-toolbar translate-x-24 scale-x-0 w-full -right-6 transition transform ease-in duration-300 border-4 border-white dark:border-[#0F172A] bg-[#1E293B]  absolute top-2 rounded-full">
		<div
			class="flex items-center space-x-3 group bg-gradient-to-r dark:from-cyan-500 dark:to-blue-500 from-indigo-500 via-purple-500 to-purple-500  pl-10 pr-2 py-1 rounded-full text-white  ">
			<div class="transform ease-in-out duration-300 mr-12">E-Shop</div>
		</div>
	</div>
	<div onclick="openNav()"
		class="-right-6 transition transform ease-in-out duration-500 flex border-4 border-white dark:border-[#0F172A] bg-[#1E293B] dark:hover:bg-blue-500 hover:bg-purple-500 absolute top-2 p-3 rounded-full text-white hover:rotate-45">
		<svg xmlns="http://www.w3.org/2000/svg" fill="none"
			viewBox="0 0 24 24" strokeWidth={3} stroke="currentColor"
			class="w-4 h-4">
                <path strokeLinecap="round" strokeLinejoin="round"
				d="M3.75 6A2.25 2.25 0 016 3.75h2.25A2.25 2.25 0 0110.5 6v2.25a2.25 2.25 0 01-2.25 2.25H6a2.25 2.25 0 01-2.25-2.25V6zM3.75 15.75A2.25 2.25 0 016 13.5h2.25a2.25 2.25 0 012.25 2.25V18a2.25 2.25 0 01-2.25 2.25H6A2.25 2.25 0 013.75 18v-2.25zM13.5 6a2.25 2.25 0 012.25-2.25H18A2.25 2.25 0 0120.25 6v2.25A2.25 2.25 0 0118 10.5h-2.25a2.25 2.25 0 01-2.25-2.25V6zM13.5 15.75a2.25 2.25 0 012.25-2.25H18a2.25 2.25 0 012.25 2.25V18A2.25 2.25 0 0118 20.25h-2.25A2.25 2.25 0 0113.5 18v-2.25z" />
            </svg>
	</div>
	<!-- MAX SIDEBAR-->
	<div
		class="max hidden text-white mt-20 flex-col space-y-2 w-full h-[calc(100vh)]">
		<a href="<%request.getContextPath();%>/tp1/admin/dashboard.jsp">
			<div
				class="hover:ml-4 w-full text-white hover:text-purple-500 dark:hover:text-blue-500 bg-[#1E293B] p-2 pl-8 rounded-full transform ease-in-out duration-300 flex flex-row items-center space-x-3">
				<svg class="w-5 h-5" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">

				<g id="SVGRepo_bgCarrier" stroke-width="0" />
				
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
				
				<g id="SVGRepo_iconCarrier"> <path
						d="M13 12C13 11.4477 13.4477 11 14 11H19C19.5523 11 20 11.4477 20 12V19C20 19.5523 19.5523 20 19 20H14C13.4477 20 13 19.5523 13 19V12Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> <path
						d="M4 5C4 4.44772 4.44772 4 5 4H9C9.55228 4 10 4.44772 10 5V12C10 12.5523 9.55228 13 9 13H5C4.44772 13 4 12.5523 4 12V5Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> <path
						d="M4 17C4 16.4477 4.44772 16 5 16H9C9.55228 16 10 16.4477 10 17V19C10 19.5523 9.55228 20 9 20H5C4.44772 20 4 19.5523 4 19V17Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> <path
						d="M13 5C13 4.44772 13.4477 4 14 4H19C19.5523 4 20 4.44772 20 5V7C20 7.55228 19.5523 8 19 8H14C13.4477 8 13 7.55228 13 7V5Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> </g>
				
			</svg>
				<div>Dashboard</div>
			</div>
		</a> <a
			href="<%request.getContextPath();%>/tp1/admin/produit/lister.jsp">
			<div
				class="hover:ml-4 w-full text-white hover:text-purple-500 dark:hover:text-blue-500 bg-[#1E293B] p-2 pl-8 rounded-full transform ease-in-out duration-300 flex flex-row items-center space-x-3">
				<svg fill="#ffffff" class="w-4 h-4 mr-2" viewBox="0 0 52 52"
					data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"
					stroke="#ffffff">
	
				<g id="SVGRepo_bgCarrier" stroke-width="0" />
				
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
				
				<g id="SVGRepo_iconCarrier">
				
				<path
						d="M15.2,2.2a1.63,1.63,0,0,1,1.7,1.7V5a1.63,1.63,0,0,1-1.7,1.7H10.1A3.4,3.4,0,0,0,6.7,9.9v32a3.4,3.4,0,0,0,3.2,3.4h32a3.4,3.4,0,0,0,3.4-3.2V36.8A1.63,1.63,0,0,1,47,35.1h1.1a1.63,1.63,0,0,1,1.7,1.7V43A6.81,6.81,0,0,1,43,49.8H9A6.81,6.81,0,0,1,2.2,43V9A6.81,6.81,0,0,1,9,2.2Z"
						fill-rule="evenodd" />
				
				<path
						d="M40.4,25.4l3.1-3.1a1,1,0,0,0,0-1.5L31,8.2a1,1,0,0,0-1.5,0l-3.1,3.1a1,1,0,0,0,0,1.5L38.9,25.3A1,1,0,0,0,40.4,25.4Z" />
				
				<path
						d="M47.4,18.3l1.5-1.5a1,1,0,0,0,0-1.5L36.5,2.7a1,1,0,0,0-1.5,0L33.5,4.2a1,1,0,0,0,0,1.5L46,18.3A1,1,0,0,0,47.4,18.3Z" />
				
				<path
						d="M36.8,28.9h0c.6-.6.5-1.1.1-1.5L24.4,14.9a1,1,0,0,0-1.5,0l-.1.1a1,1,0,0,0,0,1.5L35.3,29A1,1,0,0,0,36.8,28.9Z" />
				
				<path
						d="M32.4,33.3l.7-.7a1,1,0,0,0,0-1.5L20.7,18.5a1,1,0,0,0-1.5,0l-.7.7a1,1,0,0,0,0,1.5L31,33.2C31.3,33.8,31.9,33.8,32.4,33.3Z" />
				
				<path
						d="M25.7,40.1,28.8,37a1,1,0,0,0,0-1.5L16.3,22.9a1,1,0,0,0-1.5,0L11.7,26a1,1,0,0,0,0,1.5L24.2,40A1,1,0,0,0,25.7,40.1Z" />
				
				</g>
			
			</svg>
				<div>Products</div>
			</div>
		</a> <a
			href="<%request.getContextPath();%>/tp1/admin/categorie/lister.jsp">
			<div
				class="hover:ml-4 w-full text-white hover:text-purple-500 dark:hover:text-blue-500 bg-[#1E293B] p-2 pl-8 rounded-full transform ease-in-out duration-300 flex flex-row items-center space-x-3">

				<svg class="w-4 h-4 mr-2" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">

						<g id="SVGRepo_bgCarrier" stroke-width="0" />
						
						<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
						
						<g id="SVGRepo_iconCarrier">
						
						<path
						d="M2 6.47762C2 5.1008 2 4.4124 2.22168 3.86821C2.52645 3.12007 3.12007 2.52645 3.86821 2.22168C4.4124 2 5.1008 2 6.47762 2V2C7.85443 2 8.54284 2 9.08702 2.22168C9.83517 2.52645 10.4288 3.12007 10.7336 3.86821C10.9552 4.4124 10.9552 5.1008 10.9552 6.47762V6.47762C10.9552 7.85443 10.9552 8.54284 10.7336 9.08702C10.4288 9.83517 9.83517 10.4288 9.08702 10.7336C8.54284 10.9552 7.85443 10.9552 6.47762 10.9552V10.9552C5.1008 10.9552 4.4124 10.9552 3.86821 10.7336C3.12007 10.4288 2.52645 9.83517 2.22168 9.08702C2 8.54284 2 7.85443 2 6.47762V6.47762Z"
						fill="#ffffff" />
						
						<path
						d="M2 17.5224C2 16.1456 2 15.4572 2.22168 14.913C2.52645 14.1649 3.12007 13.5712 3.86821 13.2665C4.4124 13.0448 5.1008 13.0448 6.47762 13.0448V13.0448C7.85443 13.0448 8.54284 13.0448 9.08702 13.2665C9.83517 13.5712 10.4288 14.1649 10.7336 14.913C10.9552 15.4572 10.9552 16.1456 10.9552 17.5224V17.5224C10.9552 18.8992 10.9552 19.5876 10.7336 20.1318C10.4288 20.88 9.83517 21.4736 9.08702 21.7783C8.54284 22 7.85443 22 6.47762 22V22C5.1008 22 4.4124 22 3.86821 21.7783C3.12007 21.4736 2.52645 20.88 2.22168 20.1318C2 19.5876 2 18.8992 2 17.5224V17.5224Z"
						fill="#ffffff" />
						
						<path
						d="M13.0449 17.5224C13.0449 16.1456 13.0449 15.4572 13.2666 14.913C13.5714 14.1649 14.165 13.5712 14.9131 13.2665C15.4573 13.0448 16.1457 13.0448 17.5225 13.0448V13.0448C18.8994 13.0448 19.5878 13.0448 20.1319 13.2665C20.8801 13.5712 21.4737 14.1649 21.7785 14.913C22.0002 15.4572 22.0002 16.1456 22.0002 17.5224V17.5224C22.0002 18.8992 22.0002 19.5876 21.7785 20.1318C21.4737 20.88 20.8801 21.4736 20.1319 21.7783C19.5878 22 18.8994 22 17.5225 22V22C16.1457 22 15.4573 22 14.9131 21.7783C14.165 21.4736 13.5714 20.88 13.2666 20.1318C13.0449 19.5876 13.0449 18.8992 13.0449 17.5224V17.5224Z"
						fill="#ffffff" />
						
						<path clip-rule="evenodd"
						d="M16.7725 9.47766C16.7725 9.89187 17.1082 10.2277 17.5225 10.2277C17.9367 10.2277 18.2725 9.89187 18.2725 9.47766V7.22766H20.5225C20.9367 7.22766 21.2725 6.89187 21.2725 6.47766C21.2725 6.06345 20.9367 5.72766 20.5225 5.72766H18.2725V3.47766C18.2725 3.06345 17.9367 2.72766 17.5225 2.72766C17.1082 2.72766 16.7725 3.06345 16.7725 3.47766L16.7725 5.72766H14.5225C14.1082 5.72766 13.7725 6.06345 13.7725 6.47766C13.7725 6.89187 14.1082 7.22766 14.5225 7.22766H16.7725L16.7725 9.47766Z"
						fill="#ffffff" fill-rule="evenodd" />
						
						</g>
						
					</svg>
				<div>Categories</div>
			</div>
		</a> <a
			href="<%request.getContextPath();%>/tp1/admin/panier/lister.jsp">
			<div
				class="hover:ml-4 w-full text-white hover:text-purple-500 dark:hover:text-blue-500 bg-[#1E293B] p-2 pl-8 rounded-full transform ease-in-out duration-300 flex flex-row items-center space-x-3">
				<svg class="w-4 h-4 mr-2" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">
	
				<g id="SVGRepo_bgCarrier" stroke-width="0" />
				
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
				
				<g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd"
						clip-rule="evenodd"
						d="M1 1C0.447715 1 0 1.44772 0 2C0 2.55228 0.447715 3 1 3H3.20647L5.98522 14.9089C6.39883 16.6816 7.95486 17.9464 9.76471 17.9983V18H17.5874C19.5362 18 21.2014 16.5956 21.5301 14.6747L22.7857 7.33734C22.9947 6.11571 22.0537 5 20.8143 5H5.72686L4.97384 1.77277C4.86824 1.32018 4.46475 1 4 1H1ZM6.19353 7L7.9329 14.4545C8.14411 15.3596 8.95109 16 9.88058 16H17.5874C18.5618 16 19.3944 15.2978 19.5588 14.3373L20.8143 7H6.19353Z"
						fill="#ffffff" /> <path
						d="M8 23C9.10457 23 10 22.1046 10 21C10 19.8954 9.10457 19 8 19C6.89543 19 6 19.8954 6 21C6 22.1046 6.89543 23 8 23Z"
						fill="#ffffff" /> <path
						d="M19 23C20.1046 23 21 22.1046 21 21C21 19.8954 20.1046 19 19 19C17.8954 19 17 19.8954 17 21C17 22.1046 17.8954 23 19 23Z"
						fill="#ffffff" /> </g>
				
			</svg>
				<div>Panniers</div>
			</div>
		</a>
		<div
			class="hover:ml-4 w-full text-white hover:text-purple-500 dark:hover:text-blue-500 bg-[#1E293B] p-2 pl-8 rounded-full transform ease-in-out duration-300 space-x-3">
			<form action="<%request.getContextPath();%>/tp1/logout" method="POST">
				<button type="submit"
					class="flex flex-row items-center justify-center">
					<svg class="w-5 h-5 mr-4" viewBox="0 0 24 24" fill="none"
						xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">
	
						<g id="SVGRepo_bgCarrier" stroke-width="0" />
						
						<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
							stroke-linejoin="round" />
						
						<g id="SVGRepo_iconCarrier"> <path
							d="M15 16.5V19C15 20.1046 14.1046 21 13 21H6C4.89543 21 4 20.1046 4 19V5C4 3.89543 4.89543 3 6 3H13C14.1046 3 15 3.89543 15 5V8.0625M11 12H21M21 12L18.5 9.5M21 12L18.5 14.5"
							stroke="#ffffff" stroke-width="2" stroke-linecap="round"
							stroke-linejoin="round" /> </g>
						
					</svg>
					<div>Logout</div>
				</button>
			</form>
		</div>
	</div>
	<!-- MINI SIDEBAR-->
	<div class="mini mt-20 flex flex-col space-y-2 w-full h-[calc(100vh)]">
		<a href="<%request.getContextPath();%>/tp1/admin/dashboard.jsp">
			<div
				class="hover:ml-4 justify-end pr-5 text-white hover:text-purple-500 dark:hover:text-blue-500 w-full bg-[#1E293B] p-3 rounded-full transform ease-in-out duration-300 flex">
				<svg class="w-5 h-5" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">

				<g id="SVGRepo_bgCarrier" stroke-width="0" />
				
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
				
				<g id="SVGRepo_iconCarrier"> <path
						d="M13 12C13 11.4477 13.4477 11 14 11H19C19.5523 11 20 11.4477 20 12V19C20 19.5523 19.5523 20 19 20H14C13.4477 20 13 19.5523 13 19V12Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> <path
						d="M4 5C4 4.44772 4.44772 4 5 4H9C9.55228 4 10 4.44772 10 5V12C10 12.5523 9.55228 13 9 13H5C4.44772 13 4 12.5523 4 12V5Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> <path
						d="M4 17C4 16.4477 4.44772 16 5 16H9C9.55228 16 10 16.4477 10 17V19C10 19.5523 9.55228 20 9 20H5C4.44772 20 4 19.5523 4 19V17Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> <path
						d="M13 5C13 4.44772 13.4477 4 14 4H19C19.5523 4 20 4.44772 20 5V7C20 7.55228 19.5523 8 19 8H14C13.4477 8 13 7.55228 13 7V5Z"
						stroke="#ffffff" stroke-width="2" stroke-linecap="round" /> </g>
				
			</svg>
			</div>
		</a>
		<div
			class="hover:ml-4 justify-end pr-5 text-white hover:text-purple-500 dark:hover:text-blue-500 w-full bg-[#1E293B] p-3 rounded-full transform ease-in-out duration-300 flex">
			<a
				href="<%request.getContextPath();%>/tp1/admin/produit/lister.jsp">
				<svg fill="#ffffff" class="w-4 h-4" viewBox="0 0 52 52"
					data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"
					stroke="#ffffff">
	
						<g id="SVGRepo_bgCarrier" stroke-width="0" />
						
						<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
						
						<g id="SVGRepo_iconCarrier">
						
						<path
						d="M15.2,2.2a1.63,1.63,0,0,1,1.7,1.7V5a1.63,1.63,0,0,1-1.7,1.7H10.1A3.4,3.4,0,0,0,6.7,9.9v32a3.4,3.4,0,0,0,3.2,3.4h32a3.4,3.4,0,0,0,3.4-3.2V36.8A1.63,1.63,0,0,1,47,35.1h1.1a1.63,1.63,0,0,1,1.7,1.7V43A6.81,6.81,0,0,1,43,49.8H9A6.81,6.81,0,0,1,2.2,43V9A6.81,6.81,0,0,1,9,2.2Z"
						fill-rule="evenodd" />
						
						<path
						d="M40.4,25.4l3.1-3.1a1,1,0,0,0,0-1.5L31,8.2a1,1,0,0,0-1.5,0l-3.1,3.1a1,1,0,0,0,0,1.5L38.9,25.3A1,1,0,0,0,40.4,25.4Z" />
						
						<path
						d="M47.4,18.3l1.5-1.5a1,1,0,0,0,0-1.5L36.5,2.7a1,1,0,0,0-1.5,0L33.5,4.2a1,1,0,0,0,0,1.5L46,18.3A1,1,0,0,0,47.4,18.3Z" />
						
						<path
						d="M36.8,28.9h0c.6-.6.5-1.1.1-1.5L24.4,14.9a1,1,0,0,0-1.5,0l-.1.1a1,1,0,0,0,0,1.5L35.3,29A1,1,0,0,0,36.8,28.9Z" />
						
						<path
						d="M32.4,33.3l.7-.7a1,1,0,0,0,0-1.5L20.7,18.5a1,1,0,0,0-1.5,0l-.7.7a1,1,0,0,0,0,1.5L31,33.2C31.3,33.8,31.9,33.8,32.4,33.3Z" />
						
						<path
						d="M25.7,40.1,28.8,37a1,1,0,0,0,0-1.5L16.3,22.9a1,1,0,0,0-1.5,0L11.7,26a1,1,0,0,0,0,1.5L24.2,40A1,1,0,0,0,25.7,40.1Z" />
						
						</g>
					
					</svg>
			</a>
		</div>
		<div
			class="hover:ml-4 justify-end pr-5 text-white hover:text-purple-500 dark:hover:text-blue-500 w-full bg-[#1E293B] p-3 rounded-full transform ease-in-out duration-300 flex">
			<a
				href="<%request.getContextPath();%>/tp1/admin/categorie/lister.jsp">
				<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">

						<g id="SVGRepo_bgCarrier" stroke-width="0" />
						
						<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
						
						<g id="SVGRepo_iconCarrier">
						
						<path
						d="M2 6.47762C2 5.1008 2 4.4124 2.22168 3.86821C2.52645 3.12007 3.12007 2.52645 3.86821 2.22168C4.4124 2 5.1008 2 6.47762 2V2C7.85443 2 8.54284 2 9.08702 2.22168C9.83517 2.52645 10.4288 3.12007 10.7336 3.86821C10.9552 4.4124 10.9552 5.1008 10.9552 6.47762V6.47762C10.9552 7.85443 10.9552 8.54284 10.7336 9.08702C10.4288 9.83517 9.83517 10.4288 9.08702 10.7336C8.54284 10.9552 7.85443 10.9552 6.47762 10.9552V10.9552C5.1008 10.9552 4.4124 10.9552 3.86821 10.7336C3.12007 10.4288 2.52645 9.83517 2.22168 9.08702C2 8.54284 2 7.85443 2 6.47762V6.47762Z"
						fill="#ffffff" />
						
						<path
						d="M2 17.5224C2 16.1456 2 15.4572 2.22168 14.913C2.52645 14.1649 3.12007 13.5712 3.86821 13.2665C4.4124 13.0448 5.1008 13.0448 6.47762 13.0448V13.0448C7.85443 13.0448 8.54284 13.0448 9.08702 13.2665C9.83517 13.5712 10.4288 14.1649 10.7336 14.913C10.9552 15.4572 10.9552 16.1456 10.9552 17.5224V17.5224C10.9552 18.8992 10.9552 19.5876 10.7336 20.1318C10.4288 20.88 9.83517 21.4736 9.08702 21.7783C8.54284 22 7.85443 22 6.47762 22V22C5.1008 22 4.4124 22 3.86821 21.7783C3.12007 21.4736 2.52645 20.88 2.22168 20.1318C2 19.5876 2 18.8992 2 17.5224V17.5224Z"
						fill="#ffffff" />
						
						<path
						d="M13.0449 17.5224C13.0449 16.1456 13.0449 15.4572 13.2666 14.913C13.5714 14.1649 14.165 13.5712 14.9131 13.2665C15.4573 13.0448 16.1457 13.0448 17.5225 13.0448V13.0448C18.8994 13.0448 19.5878 13.0448 20.1319 13.2665C20.8801 13.5712 21.4737 14.1649 21.7785 14.913C22.0002 15.4572 22.0002 16.1456 22.0002 17.5224V17.5224C22.0002 18.8992 22.0002 19.5876 21.7785 20.1318C21.4737 20.88 20.8801 21.4736 20.1319 21.7783C19.5878 22 18.8994 22 17.5225 22V22C16.1457 22 15.4573 22 14.9131 21.7783C14.165 21.4736 13.5714 20.88 13.2666 20.1318C13.0449 19.5876 13.0449 18.8992 13.0449 17.5224V17.5224Z"
						fill="#ffffff" />
						
						<path clip-rule="evenodd"
						d="M16.7725 9.47766C16.7725 9.89187 17.1082 10.2277 17.5225 10.2277C17.9367 10.2277 18.2725 9.89187 18.2725 9.47766V7.22766H20.5225C20.9367 7.22766 21.2725 6.89187 21.2725 6.47766C21.2725 6.06345 20.9367 5.72766 20.5225 5.72766H18.2725V3.47766C18.2725 3.06345 17.9367 2.72766 17.5225 2.72766C17.1082 2.72766 16.7725 3.06345 16.7725 3.47766L16.7725 5.72766H14.5225C14.1082 5.72766 13.7725 6.06345 13.7725 6.47766C13.7725 6.89187 14.1082 7.22766 14.5225 7.22766H16.7725L16.7725 9.47766Z"
						fill="#ffffff" fill-rule="evenodd" />
						
						</g>
						
					</svg>
			</a>
		</div>
		<div
			class="hover:ml-4 justify-end pr-5 text-white hover:text-purple-500 dark:hover:text-blue-500 w-full bg-[#1E293B] p-3 rounded-full transform ease-in-out duration-300 flex">
			<a
				href="<%request.getContextPath();%>/tp1/admin/panier/lister.jsp">
				<svg class="w-4 h-4" viewBox="0 0 24 24" fill="none"
					xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">
	
				<g id="SVGRepo_bgCarrier" stroke-width="0" />
				
				<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
						stroke-linejoin="round" />
				
				<g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd"
						clip-rule="evenodd"
						d="M1 1C0.447715 1 0 1.44772 0 2C0 2.55228 0.447715 3 1 3H3.20647L5.98522 14.9089C6.39883 16.6816 7.95486 17.9464 9.76471 17.9983V18H17.5874C19.5362 18 21.2014 16.5956 21.5301 14.6747L22.7857 7.33734C22.9947 6.11571 22.0537 5 20.8143 5H5.72686L4.97384 1.77277C4.86824 1.32018 4.46475 1 4 1H1ZM6.19353 7L7.9329 14.4545C8.14411 15.3596 8.95109 16 9.88058 16H17.5874C18.5618 16 19.3944 15.2978 19.5588 14.3373L20.8143 7H6.19353Z"
						fill="#ffffff" /> <path
						d="M8 23C9.10457 23 10 22.1046 10 21C10 19.8954 9.10457 19 8 19C6.89543 19 6 19.8954 6 21C6 22.1046 6.89543 23 8 23Z"
						fill="#ffffff" /> <path
						d="M19 23C20.1046 23 21 22.1046 21 21C21 19.8954 20.1046 19 19 19C17.8954 19 17 19.8954 17 21C17 22.1046 17.8954 23 19 23Z"
						fill="#ffffff" /> </g>
				
			</svg>
			</a>
		</div>
		<div
			class="hover:ml-4 justify-end pr-5 text-white hover:text-purple-500 dark:hover:text-blue-500 w-full bg-[#1E293B] p-3 rounded-full transform ease-in-out duration-300 flex">
			<form action="<%request.getContextPath();%>/tp1/logout" method="POST">
				<button type="submit">
					<svg class="w-5 h-5" viewBox="0 0 24 24" fill="none"
						xmlns="http://www.w3.org/2000/svg" stroke="#ffffff">
	
						<g id="SVGRepo_bgCarrier" stroke-width="0" />
						
						<g id="SVGRepo_tracerCarrier" stroke-linecap="round"
							stroke-linejoin="round" />
						
						<g id="SVGRepo_iconCarrier"> <path
							d="M15 16.5V19C15 20.1046 14.1046 21 13 21H6C4.89543 21 4 20.1046 4 19V5C4 3.89543 4.89543 3 6 3H13C14.1046 3 15 3.89543 15 5V8.0625M11 12H21M21 12L18.5 9.5M21 12L18.5 14.5"
							stroke="#ffffff" stroke-width="2" stroke-linecap="round"
							stroke-linejoin="round" /> </g>
						
					</svg>
				</button>
			</form>
		</div>
		<div
			class="hover:ml-4 justify-end pr-5 text-white hover:text-purple-500 dark:hover:text-blue-500 w-full bg-[#1E293B] p-3 rounded-full transform ease-in-out duration-300 flex">

		</div>
	</div>

</aside>

<script>
	const sidebar = document.querySelector("aside");
	const maxSidebar = document.querySelector(".max")
	const miniSidebar = document.querySelector(".mini")
	const roundout = document.querySelector(".roundout")
	const maxToolbar = document.querySelector(".max-toolbar")
	const logo = document.querySelector('.logo')
	const content = document.querySelector('.content')
	const moon = document.querySelector(".moon")
	const sun = document.querySelector(".sun")

	function setDark(val) {
		if (val === "dark") {
			document.documentElement.classList.add('dark')
			moon.classList.add("hidden")
			sun.classList.remove("hidden")
		} else {
			document.documentElement.classList.remove('dark')
			sun.classList.add("hidden")
			moon.classList.remove("hidden")
		}
	}

	function openNav() {
		if (sidebar.classList.contains('-translate-x-48')) {
			// max sidebar 
			sidebar.classList.remove("-translate-x-48")
			sidebar.classList.add("translate-x-none")
			maxSidebar.classList.remove("hidden")
			maxSidebar.classList.add("flex")
			miniSidebar.classList.remove("flex")
			miniSidebar.classList.add("hidden")
			maxToolbar.classList.add("translate-x-0")
			maxToolbar.classList.remove("translate-x-24", "scale-x-0")
			logo.classList.remove("ml-12")
			content.classList.remove("ml-12")
			content.classList.add("ml-12", "md:ml-60")
		} else {
			// mini sidebar
			sidebar.classList.add("-translate-x-48")
			sidebar.classList.remove("translate-x-none")
			maxSidebar.classList.add("hidden")
			maxSidebar.classList.remove("flex")
			miniSidebar.classList.add("flex")
			miniSidebar.classList.remove("hidden")
			maxToolbar.classList.add("translate-x-24", "scale-x-0")
			maxToolbar.classList.remove("translate-x-0")
			logo.classList.add('ml-12')
			content.classList.remove("ml-12", "md:ml-60")
			content.classList.add("ml-12")

		}

	}
</script>
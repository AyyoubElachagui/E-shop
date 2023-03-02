<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div
	class="fixed w-full z-30 flex bg-white dark:bg-[#0F172A] p-2 items-center justify-center h-16 px-10">
	<div
		class="logo ml-12 dark:text-white  transform ease-in-out duration-500 flex-none h-full flex items-center justify-center">
		<a href="#">E-Shop</a>
	</div>
	<!-- SPACER -->
	<div class="grow h-full flex items-center justify-center"></div>
	<div
		class="flex-none h-full text-center flex items-center justify-center">

		<div class="flex space-x-3 items-center px-3">
			<div class="flex-none flex justify-center">
				<div class="w-8 h-8 flex ">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShta_GXR2xdnsxSzj_GTcJHcNykjVKrCBrZ9qouUl0usuJWG2Rpr_PbTDu3sA9auNUH64&usqp=CAU"
						alt="profile" class="shadow rounded-full object-cover" />
				</div>
			</div>

			<div
				class="hidden md:block text-sm md:text-md text-black dark:text-white">${user.username }</div>
		</div>

	</div>
</div>
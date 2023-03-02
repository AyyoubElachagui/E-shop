<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Produit | page</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<div class="flex justify-center items-center h-screen bg-red-50">
	<div>
		<a href="../home.jsp" class="py-3 px-10 bg-[#248ffe] mb-10 rounded-full text-slate-100 font-bold bg-blue-500 shadow-lg shadow-blue-500/50">go back </a>
		<form class="w-full max-w-lg mt-8" action="../ajouter/produit" method="POST">
		  <div class="flex flex-wrap -mx-3 mb-6">
		    <div class="w-full px-3 mb-6 md:mb-0">
		      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-id">
		        Id Produit
		      </label>
		      <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-id" type="number" placeholder="id Categorie ...." name="idPro" required>
		    </div>
		    <div class="w-full px-3 mb-6 md:mb-0">
		      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-designation">
		        Designation
		      </label>
		      <textarea name="designation" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-designation" type="text" placeholder="designation..." required></textarea>
		    </div>
		    <div class="w-full px-3 mb-6">
		      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-description">
		        Description
		      </label>
		      <textarea name="description" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-description" type="text" placeholder="description..." required></textarea>
		    </div>
		    <div class="w-full px-3 mb-6 md:mb-0">
		      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-qte">
		        Quantité
		      </label>
		      <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-red-500 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-qte" type="number" placeholder="Quantité ...." name="qte" required>
		    </div>
		  </div>
            <button type="submit" class="py-3 px-10 bg-[#248ffe] mt-4 rounded-full text-slate-100 font-bold bg-blue-500 shadow-lg shadow-blue-500/50">
                Ajouter Produit 
            </button>
		</form>
	</div>
</div>

</body>	
</html>
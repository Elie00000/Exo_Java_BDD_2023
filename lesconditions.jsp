<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 (Chiffres): <input type="text" id="inputValeur1" name="valeur1">
    <p>Saisir la valeur 2 (Chiffres): <input type="text" id="inputValeur2" name="valeur2">
    <p>Saisir la valeur 3 (Chiffres): <input type="text" id="inputValeur3" name="valeur3">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>
    <% String valeur3 = request.getParameter("valeur3"); %>

    
    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null && valeur3 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% intValeur1 = Integer.parseInt(valeur1); %>
        <% intValeur2 = Integer.parseInt(valeur2); %>
        <% intValeur3 = Integer.parseInt(valeur3); %>
    <% } %>
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>

<% if (intValeur3 >= intValeur1 && intValeur3 <= intValeur2) { %>
    <% System.out.println("La valeur 3" + intValeur3 + "est comprise entre la valeur 1" + intValeur1 + " et 2 " + intValeur2); %>
<% } else { %>
    <% System.out.println("La valeur 3" + intValeur3 + " n'est pas comprise entre la valeur 1" + intValeur1 + " et 2 " + intValeur2); %>
<% } %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

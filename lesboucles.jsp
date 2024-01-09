<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
<%-- Vérification de l'existence de la valeur --%>
<% if (valeur != null && !valeur.isEmpty()) { %>

<%-- Boucle for pour afficher une ligne d'étoiles --%>
    <%int cpt = Integer.parseInt(valeur); %>
    <p>
    <% for (int i = 1; i <= cpt; i++) { %>
       <%= "*" %>
    <% } %>
    </p>

<h2>Exercice 1 : Le carré d'étoiles</h2>
<p>Ecrire le code afin de produire un carré d'étoile</p>
    <% for (int j = 1; j <= cpt; j++) { %>
        <% for (int k = 1; k <= cpt; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

</p>
<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
    <% for (int a = 1; a <= cpt; a++) { %>
        <% for (int b = 1; b <= a; b++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
    <% int cpy=cpt; %>
    <% for (int c = 1; c <= cpt; c++) { %>
        <% for (int d = cpy; d >= 1; d--) { %>
            <%= "*" %>
        <% } %>
        <% cpy = cpy - 1; %>
        <br>
    <% } %>

<h2>Exercice 4 : Triangle rectangle 2</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
    <% cpy=cpt; %>
    <% for (int e = 1; e <= cpt; e++) { %>
        <% for (int g = cpy; g >= 1; g--) { %>
            &nbsp;&thinsp;
        <% } %>
        <% for (int f = 1; f <= e; f++) { %>
            <%= "*" %>
        <% } %>
        <% cpy = cpy - 1; %>
        <br>
    <% } %>

<h2>Exercice 5 : Triangle isocele</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la droite</p>
    <% cpy=cpt; %>
        <% for (int h = 1; h <= cpt; h++) { %>
            <% for (int m = (cpy - 1); m >= 1; m--) { %>
                &nbsp;
            <% } %>
            <% for (int l = 1; l <= h; l++) { %>
                *&nbsp;
            <% } %>
            <% cpy = cpy - 1; %>
            <br>
        <% } %>
<h2>Exercice 6 : Le demi losange</h2>
<p>Ecrire le code afin de produire un losange</p>
    <% cpy=cpt; %>
        <% for (int o = 1; o <= cpt; o++) { %> 
            <% for (int r = (cpy - 1); r >= 1; r--) { %>
                &nbsp;
            <% } %>
            <% for (int p = 1; p <= o; p++) { %>
                *&nbsp;
            <% } %>
            <% cpy = cpy - 1; %>
            <br>
        <% } %>
        <% cpy=cpt; %>
        <% for (int o2 = 1; o2 <= (cpt); o2++) { %>
            <% for (int q2 = 1; q2 <= o2; q2++) { %>
                &nbsp;
            <% } %>
            <% for (int s2 = cpy; s2 >= 2; s2--) { %>
                *&nbsp;
            <% } %>
            <% cpy = cpy - 1; %>
            <br>
        <% } %>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
    <% cpy=cpt; %>
        <% for (int z = 1; z <= cpt; z++) { %>
            <% int w = cpt * z; out.print(cpt + "x" + z + "=" + w); %>
            <br>
        <% } %>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>

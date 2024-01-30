<html>
	<head>
		<title>Vagrant web site</title>
	</head>
	<body>
		<h1>Classe I4BB</h1>
		<table class="table">
            <thead class="table-light">
                <th>Nome</th>
                <th>Cognome</th>
                <th>Età</th>
            </thead>
            <tbody>
                <?php foreach ($risultati as $risultato): ?>
                    <tr>
                        <td><label><?php echo $risultato['nome'] ?>"</label></td>
                        <td><label><?php echo $risultato['cognome'] ?>"</label></td>
                        <td><label><?php echo $risultato['eta'] ?>"</label></td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
	</body>
</html>
<?php
$ip = "10.10.20.11";
$utente = "vagrant";
$password = "password";
$database = "vagrant";

try {
    $connessione = new PDO("mysql:host=$ip;dbname=$database", $utente, $password);
    $connessione->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $query = "SELECT * FROM dati";
    $stmt = $connessione->prepare($query);
    $stmt->execute();
    $risultati = $stmt->fetchAll(PDO::FETCH_ASSOC);
	require './home.php';
} catch (PDOException $e) {
    echo "Errore durante la connessione al database: " . $e->getMessage();
}
?>
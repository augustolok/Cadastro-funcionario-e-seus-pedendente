<?php
 include('conexão.php');
$id=$_GET["apagar"];



    $sql_code = $mysqli->query("DELETE FROM dependentes WHERE id = '" . $id . "'");



     if($mysqli->query($sql_code))
        $msg = "Arquivo enviado com sucesso!";
    else
        $msg = "Falha ao enviar arquivo.";

?>
<script>
    window.close();
</script>

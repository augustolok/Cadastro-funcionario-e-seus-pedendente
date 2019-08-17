<?php
 include('conexão.php');
$id=$_POST["banco"];

$i=0;
foreach($id as $row) {
    $sql_code = $mysqli->query("DELETE FROM funcionarios WHERE id = '" . $id[$i] . "'");

    $i++;
}
     //if($mysqli->query($sql_code))
     //    $msg = "Arquivo enviado com sucesso!";
    // else
   //      $msg = "Falha ao enviar arquivo.";

?>
<script>
    window.close();
</script>

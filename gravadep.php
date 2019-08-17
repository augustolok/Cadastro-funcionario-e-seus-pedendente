<?php
 include('conexão.php');

 $nome =$_POST['cNomeDep'];
$data =$_POST['cDataNasc'];
$email =$_POST['cDataNasc'];
$id =  $_POST['cidpai'];


     $sql_code = "INSERT INTO dependentes (nome,datanascimento,user_id) VALUES( '$nome','$data','$id')";
     echo $sql_code;
     if($mysqli->query($sql_code))
         $msg = "Arquivo enviado com sucesso!";
     else
         $msg = "Falha ao enviar arquivo.";

?>
<script>
    window.close();
</script>

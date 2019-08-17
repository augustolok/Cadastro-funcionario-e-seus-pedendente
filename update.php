<?php
 include('conexão.php');
 $nome =$_POST['cNome'];
$data =$_POST['cDataNasc'];
$email =$_POST['cEmail'];
$id =$_POST['cid'];

 if(isset($_FILES['cFoto'])) {
     $extensao = strtolower(substr($_FILES['cFoto']['name'], -4)); //pega a extensao do arquivo
     $novo_nome = $id . $extensao; //define o nome do arquivo
     $diretorio = "images/"; //define o diretorio para onde enviaremos o arquivo
     move_uploaded_file($_FILES['cFoto']['tmp_name'], $diretorio . $novo_nome); //efetua o upload
     $sql_code = "UPDATE funcionarios SET nome ='$nome',datanascimento='$data',email='$email',foto ='$novo_nome' WHERE id = '$id'";

     if($mysqli->query($sql_code))
         $msg = "Arquivo enviado com sucesso!";
     else
         $msg = "Falha ao enviar arquivo.";
     echo $sql_code;

 }

?>
<script>
    window.close();
</script>

<?php   include 'cabeca.php';
        include 'conexão.php';
if (isset($_GET["edita"]))
{

    $conta [] =  $_GET['edita'];


    $select = $mysqli->query("SELECT * FROM funcionarios where id='".$conta[0]."' LIMIT 1");
    $rows = array();
    while($row = mysqli_fetch_array($select))
        $rows[] = $row;

}
?>
    <script>
        <!--
        function timedRefresh(timeoutPeriod) {
            setTimeout("location.reload(true);",timeoutPeriod);
        }
        //   -->
    </script>
    <script  src="js/index.js"></script>
<div id="listaPessoas">

    <h1>Editando o Cadastro</h1>
   
    <form id="formCadastrar" method="post" enctype="multipart/form-data" action="update.php" target="_blank">
        <?php  foreach($rows as $row) {?>
        <label for="cNome">Nome</label><br />
        <input id="cNome" name="cNome" value="<?php echo $row['nome'];?>"/><br />

        <label for="cDataNasc">Data de Nascimento</label><br />
        <input id="cDataNasc" name="cDataNasc"  type="date"  value="<?php echo $row['datanascimento'];?>"/><br />

        <label for="cEmail">E-Mail</label><br />
        <input id="cEmail" name="cEmail" value="<?php echo $row['email'];?>" /><br />
            <input type="hidden" name="cid" id="cid" value="<?php echo $row['id'];?>" />
        <label for="cFoto">Foto</label><br />
        <input id="cFoto" name="cFoto" id="cFoto"type="file" value="<?php echo $row['foto'];?>"/><br />
    <?php }?>
        <input type="submit" value="Ataulizar" onClick="timedRefresh(1000)">
    </form>
    


</div>


<?php include 'rodape.php';  ?>
<?php include 'cabeca.php';  ?>
    <script>
        <!--
        function timedRefresh(timeoutPeriod) {
            setTimeout("location.reload(true);",timeoutPeriod);
        }


        //   -->
    </script>
<script  src="js/index.js"></script>
<div id="listaPessoas">

    <h1>Incluindo um Novo Cadastro</h1>
   
    <form id="formCadastrar" name="form" method="post" enctype="multipart/form-data" action="gravar.php" target="_blank" onsubmit="return validaForm(this);">
        <label for="cNome">Nome</label><br />
        <input id="cNome" name="cNome"   value=""/><br />

        <label for="cDataNasc">Data de Nascimento</label><br />
        <input type="date" id="cDataNasc" name="cDataNasc" min="1918-12-31" /><br />

        <label for="cEmail" >E-Mail</label><br />
        <input id="cEmail" name="cEmail"  value=""/><br />
		
        <label for="cFoto">Foto</label><br />
        <input id="cFoto" name="cFoto" type="file" onchange="myFunction()" value=""/><br />
        <p id="demo"></p>
			<input type="submit" onClick="">
    </form>
    
  

</div>


<?php include 'rodape.php';  ?>
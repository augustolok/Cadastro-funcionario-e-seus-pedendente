<?php include 'cabeca.php';
    include ('conexão.php');

        $select = $mysqli->query("SELECT * FROM funcionarios where id>='0' LIMIT 10");
        $i=0;
        if (isset($_GET["pagina"]))
            {

              $conta [] =  $_GET['pagina'];

                $select = $mysqli->query("SELECT * FROM funcionarios where id>='".$conta[0]."' LIMIT 10");
            }
            if (isset($_GET["volta"]))
            {

                $conta [] =  $_GET['volta'];

                $select = $mysqli->query("SELECT * FROM funcionarios where id<='".$conta[0]."' LIMIT 10");
            }


            else{

                $conta []= 0;
            }
?>
    <script>
        <!--
        function timedRefresh(timeoutPeriod) {
            setTimeout("location.reload(true);",timeoutPeriod);
        }
        document.getElementById('change').onclick = changeColor;


        //   -->
    </script>

    <div id="listaPessoas" xmlns="http://www.w3.org/1999/html">
            	<h1>Cadastros</h1>
                <form action="excluir.php" method="post" target="_blank">
                    <input type=submit id="enviar" value="Excluir" onClick="timedRefresh(1000)">
                
                <table id="tLista" cellpadding="0" cellspacing="0" border="0">

                        <th width="5%"><input type="checkbox"/></th>
                        <th width="10%">ID</th>
                        <th class="tL"></th>
                        <th width="20%">Data de Nascimento</th>
                        <th width="10%">Dep</th>
                        <th width="8%">Status</th>

                    </tr>

                    <?php



                    $contapagina = $mysqli->query("SELECT * FROM funcionarios where id>='".$conta[0]."' ");
                    while($pagina = mysqli_fetch_array($contapagina))
                        $paginas[] = $pagina;

                     foreach($paginas as $pagina) {
                         $i++;
                     }



                    $rows = array();

                    while($row = mysqli_fetch_array($select))
                        $rows[] = $row;

                    foreach($rows as $row) {
                        $conta[0]=$row['id']

                        ?>
                    <tr>
                    	<td align="center" style="border-left:0;"><input type="checkbox" name="banco[]" value="<?php echo $row['id']; ?>"/></td>
                    	<td align="center"><?php echo $row['id']; ?></td>
                    	<td><a href="editar.php?edita=<?php echo $row['id']; ?>" class="linkUser"><?php echo $row['nome']; ?></a></td>
                    	<td align="center"><?php echo $row['datanascimento']; ?></td>
                        <td align="center"><a href="dependentes.php?lista=<?php echo $row['id'];?>" class="btAdicionar"></a></td>
                    	<td align="center"><a class="btCinza"></a></td>
                    </tr>
                        <?php

                    }
                    ?>


                   
                </table>
            	
            </div>

            <div id="paginacao">
                <a href="lista.php?volta=<?php echo $conta[0];?>"  class="btSeta1"></a>
                <div id="pags">  <?php


                    $paginares=0;
                    $paginaatual=0;
                        if($i>=9) {
                            $paginares = ceil($i/10);
                            $paginaatual++;
                            echo "volta   proximo";

                        }
                        else{
                            echo "volta   proximo";
                        }
                    ?></div>
                <a href="lista.php?pagina=<?php echo $conta[0];?>" class="btSeta2"></a>







            </div>
</
    </form>
            
<?php include 'rodape.php';  ?>
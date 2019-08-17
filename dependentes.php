<?php include 'cabeca.php';
include ('conexão.php');
 $id =  $_GET['lista'];

    $select = $mysqli->query("SELECT * FROM funcionarios where id='".$id."'");
    $selectfilho=$mysqli->query("SELECT * FROM dependentes where user_id='".$id."'");
    $rows = array();
    $rowsfilho = array();
    while($rowf = mysqli_fetch_array($selectfilho))
        $rowsfilho[] = $rowf;

    if (isset($_GET["apagar"]))
    {

        $conta [] =  $_GET['apagar'];

        $select = $mysqli->query("SELECT * FROM funcionarios where id>='".$conta[0]."' LIMIT 10");
    }
    while($row = mysqli_fetch_array($select))
        $rows[] = $row;

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
            	<h1>Dependentes</h1>

                <div id="infoDep">
                    <?php
                    foreach($rows as $row) {


                    ?>
                    <div id="fotoCadastro">
                        <img src="images/<?php  echo $row['foto'];?>" width="77" height="77"/>
                    </div>

                    <table id="tListaCad" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <td class="tituloTab">Nome</td>
                            <td><?php  echo $row['nome'];  $idpai=$row['id'];?></td>
                        </tr>
                        <tr bgcolor="#cddeeb">
                            <td class="tituloTab">Data de Nascimento</td>
                            <td><?php  echo $row['datanascimento'];?></td>
                        </tr>
                        <tr>
                            <td class="tituloTab">Email</td>
                            <td><?php  echo $row['email'];?></td>
                        </tr>
                        <?php
                        }
                        ?>
                    </table>


                    <form id="frmAdicionaDep" method="post" action="gravadep.php" target="_blank" onsubmit="return validaFormdep(this);">

                        <div class="agrupa mB mR">
                            <label for="cNomeDep">Nome</label><br />
                            <input type="text" name="cNomeDep" id="cNomeDep"  value=""/>
                            <input type="hidden" name="cidpai" id="cidpai" value="<?php echo $idpai;?>" />
                        </div>
                        <div class="agrupa">
                            <label for="cDataNasc">Data de Nascimento</label><br />
                            <input type="date" name="cDataNasc" id="cDataNasc" min="1918-12-31" />
                        </div>

                        <input type="submit" value="Adicionar" onClick="timedRefresh(1000)" >

                    </form>


                    <table id="tLista" cellpadding="0" cellspacing="0" border="0">
                        <tr>
                            <th width="60%" class="tL">Nome do Dependente</th>
                            <th width="33%">Data de Nascimento</th>
                            <th></th>
                        </tr>
                        <tr>
                            <?php foreach($rowsfilho as $rowf) {?>
                            <td><?php echo $rowf['nome'];?></td>
                            <td><?php echo $rowf['datanascimento'];?></td>
                            <td align="center"><a id="myHref" href="dependentesExcluir.php?apagar=<?php echo $rowf['id'];?>" target="_blank" class="btRemover" onClick="timedRefresh(1000)"></a></td>
                        </tr>
                        <?php
                            }
                        ?>
                    </table>
                    

                </div>
                
            </div>    

<?php include 'rodape.php';  ?>

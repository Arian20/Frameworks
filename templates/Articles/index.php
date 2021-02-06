<meta name="viewport" content="width=device-width, initial-scale=1.0">


<style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
// body style

body               {
  background:#9BC86A;
  font:400 14px 'Calibri','Arial';
  padding:20px;
}

blockquote {
  color:white;
  text-align:center;
}
body  {

  background-image: url(https://cdn.discordapp.com/attachments/507112279695818754/807314680229920888/Hintergrund_holz.jpg);
  background-size: 100% auto;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
button {
  background-image: url();
  background-repeat: no-repeat;
  background-position: 50% 50%;
  /* put the height and width of your image here */
  height: 50px;
  width: 200px;
  border: none;
}

button span {
  display: none;
}
</style>

<h1><?php echo __("Rezeptliste")?></h1>

<h4><?php echo __("Haben Sie auch Rezepte, die Sie mit der Community teilen wollen? Dann legen Sie jetzt los!")?></h4>
<p><?= $this->Html->link(( __("Rezept hinzufügen")), ['action' => 'add'], ['class' => 'button', 'target' => '_self'])?></p>


</br>
<h4><?php echo __("Schauen Sie jetzt nach ihrem gewünschtem Hashtag!")?></h4>
<p><?= $this->Html->link (( __("Tags anzeigen")), '/tags/', ['class' => 'button', 'target' => '_self']) ?></p>
</br>
</br>
<h4><?php echo __("Filtern Sie die Rezepte nach Namen oder Zutaten!")?></h4>





<body>



<?= $this->Form->create(null,['type'=>'get']) ?>


      <?= $this->Form->control('key',['label'=>'','value'=>$this->request->getQuery('key')]) ?>

      <?= $this->Form->submit ( __("Filtern!")) ?>
      <?= $this->Form->end() ?>

</br>
</br>

<table>
    <tr>
        <th><?php echo __("Rezeptnamen")?></th>
<th><?php echo __("Bild")?></th>
        <th><?php echo __("Aktionen")?></th>
    </tr>

<link rel="stylesheet" href="/css/tabellenview.css" />

<?php foreach ($articles as $article): ?>

    <tr>
        <td>
            <?= $this->Html->link($article->title, ['action' => 'view', $article->slug]) ?>

        </td>
<td>
            <!-- <?=$this->Html->image($article->image) ?> -->

        </td>
        <td>
            <?= $this->Html->link(__('Ändern'), ['action' => 'edit', $article->slug]) ?>
            <?= $this->Form->postLink(
                 __("Löschen"),
                ['action' => 'delete', $article->slug],
                ['confirm' => 'Bist du dir sicher?'])
            ?>
        </td>
    </tr>
<?php endforeach;  ?>

</table>
</body>
</br>
</br>


<!-- <?php

function besucher($record) {
    $db_host = "localhost";
    $db_username = "root";
    $db_password = "";
    $db_name = "cake";
    $db_table = "webcounter";
    $counter_page = "access_page";
    $counter_field = "access_counter";

$rowSQL = mysql_query( "SELECT MAX( access_counter ) AS max FROM webcounter;" );
$row = mysql_fetch_array( $rowSQL );
$largestNumber = $row['max'];
echo $row['max'];
};
?> -->

<?php

echo $this->Form->create(NULL,array());
           echo $this->Form->radio("locale",
              [
                 ['value'=>'en_US','text'=>'English'],
                 ['value'=>'de_DE','text'=>'German'],

              ]
           );
           echo $this->Form->button('Sprache ändern');

           echo $this->Form->end();

?>





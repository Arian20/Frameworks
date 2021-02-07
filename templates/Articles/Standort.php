
<h3>Geben Sie Ihre Adresse ein!/ Enter your address!<h3>

<?= $this->Form->create() ?>




<?php
if (isset($_POST["submit_address"]))
{
    $address = $_POST["address"];
    ?>
    <iframe width="100%" height="500" src="https://maps.google.com/maps?q=<?php
    echo "$address Discounter";?>&output=embed"></iframe>
    <?php
}
?>
<form method="POST">
    <p>
        <input type="text" name="address" placeholder="Here">
    </p>
    <button input type="submit" name="submit_address" value="">Lets go</button>


</form>

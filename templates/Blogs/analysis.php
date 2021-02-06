<html>
<h3>Momentan beliebteste Rezepte!</h3>

<style>
body  {

  background-image: url(https://cdn.discordapp.com/attachments/507112279695818754/807314680229920888/Hintergrund_holz.jpg);
  background-size: 100% auto;
  background-repeat: no-repeat;
  background-attachment: fixed;
}
</style>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['access_page', 'access_counter'],
          //['Zimtkuchen', '7']
          <?php
         $conn = mysqli_connect("localhost", "root", "", "cake");
         $sql = "SELECT id, access_page, access_counter FROM webcounter";
         $fire = mysqli_query($conn,$sql);

         //$result = mysqli_fetch_assoc($fire);
         //var_dump($result);
           while ($result = mysqli_fetch_assoc($fire)) {
             echo"['".$result['access_page']."',".$result['access_counter']."],";
           }

         ?>
        ]);

        var options = {
          title: ''
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>

  </body>
</html>

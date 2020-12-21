<?PHP
session_start();
require('config.php');
if(!isset($_SESSION['username'])){
   header("Location:login.php");
}

?>

<?php 
include ('header.php');
?>
<?php
$query = "SELECT * FROM `departments` ";
 
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
?>
 <button onclick="myFunction()">Department</button>
 <?php
if(mysqli_num_rows($result) > 0){
        echo "<table border='1' id='myDIV'>";
            echo "<tr>";
                echo "<th>Department Number</th>";
                echo "<th>Department Name</th>";
                
            echo "</tr>";

            while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['dept_no'] . "</td>";
                echo "<td>" . $row['dept_name'] . "</td>";
                
            echo "</tr>";
        }
        echo "</table>";

        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }

//$count = mysqli_num_rows($result);

//while($r=mysqli_fetch_row($result))
//{
//echo $r[1]." ".$r[2]." <br/>";
//}	

?>
<script>
function myFunction() {
  var x = document.getElementById("myDIV");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}
</script>

<!--<style>
#myDIV {
  width: 100%;
  padding: 50px 0;
  text-align: center;
  background-color: lightblue;
  margin-top: 20px;
}
 </style>-->

<?php 
    include ('footer.php');
    ?>

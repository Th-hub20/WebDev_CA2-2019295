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

<div align="center">
	<form method="post" action="">
	<input type="text" name="emp_no" placeholder="Enter Emp No....">
	<input type="submit" name="submit">
	</form>
	</div>

<?php
$query = "SELECT * FROM `dept_emp` ";
 
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
?>
 
 <?php
if(mysqli_num_rows($result) > 0){
        echo "<table border='1' id='myDIV'>";
            echo "<tr>";
            echo "<th>Employee No</th>";
                echo "<th>Department No</th>";
                echo "<th>From</th>";
                echo "<th>To</th>";
                
            echo "</tr>";

            while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['emp_no'] . "</td>";
                echo "<td>" . $row['dept_no'] . "</td>";
                echo "<td>" . $row['from_date'] . "</td>";
                echo "<td>" . $row['to_date'] . "</td>";
                
            echo "</tr>";
        }
        echo "</table>";

        mysqli_free_result($result);
    } else{
        //echo "No records matching your query were found.";
    }

//$count = mysqli_num_rows($result);

//while($r=mysqli_fetch_row($result))
//{
//echo $r[1]." ".$r[2]." <br/>";
//}	

?>


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
 @$query = "SELECT * FROM `dept_emp` WHERE emp_no= '".$_POST['emp_no']."' ";
 
$result = mysqli_query($connection, $query) or die(mysqli_error($connection));
?>
 
 <?php
if(mysqli_num_rows($result) > 0){
        echo "<table border='2' id='myDIV' align='center'>";
            echo "<tr>";
            echo "<th>Employee No</th>";
                echo "<th>Department No</th>";
                echo "<th>From</th>";
                echo "<th>To</th>";
                
            echo "</tr>";

            while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['emp_no'] . "</td>";
                echo "<td>" . $row['dept_no'] . "</td>";
                echo "<td>" . $row['from_date'] . "</td>";
                echo "<td>" . $row['to_date'] . "</td>";
                
            echo "</tr>";
        }
        echo "</table>";

        mysqli_free_result($result);
    } else{
        //echo "No records matching your query were found.";
    }
?>
<?php 
    include ('footer.php');
    ?>

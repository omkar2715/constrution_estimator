<?php session_start();
//DB conncetion
include_once('config.php');
// error_reporting(0);



if(isset($_POST['submit'])){

$client=$_POST['client'];
$sq_ft=$_POST['sq_ft'];

$cement=$_POST['cement'];
$cement_price_show=$_POST['cement_price_show'];
$total_cement_amt=$_POST['total_cement_amt'];

$steel=$_POST['steel'];
$steel_price_show=$_POST['steel_price_show'];
$total_steel_amt=$_POST['total_steel_amt'];

$worker=$_POST['worker'];
$worker_price_show=$_POST['worker_price_show'];
$total_worker_amt=$_POST['total_worker_amt'];

$sand=$_POST['sand'];
$sand_price_show=$_POST['sand_price_show'];
$total_sand_amt=$_POST['total_sand_amt'];

$bricks=$_POST['bricks'];
$bricks_price_show=$_POST['bricks_price_show'];
$total_bricks_amt=$_POST['total_bricks_amt'];

$total_amount=$_POST['total_amount'];
$percent=$_POST['percent'];
$quatation=$_POST['quatation'];



    $query="insert into quatation(client,sq_ft,cement,cement_price_show,total_cement_amt,steel,steel_price_show,total_steel_amt,worker,worker_price_show,total_worker_amt,sand,sand_price_show,total_sand_amt,bricks,bricks_price_show,total_bricks_amt,total_amount,percent,quatation) values('$client','$sq_ft','$cement','$cement_price_show','$total_cement_amt','$steel','$steel_price_show','$total_steel_amt','$worker','$worker_price_show','$total_worker_amt','$sand','$sand_price_show','$total_sand_amt','$bricks','$bricks_price_show','$total_bricks_amt','$total_amount','$percent','$quatation')";
    // print_r($query);exit();
    $result =mysqli_query($con, $query);
      $last_id = mysqli_insert_id($con);
    if ($result) 
    {
      echo "<script>window.location.href='pdf.php?qid=".$last_id."'</script>";
    } 
    else 
    {
      echo "<script>alert('Something went wrong. Please try again.');</script>";  
      echo "<script>window.location.href='calculation.php'</script>";
    }

}
?>
<?php
$qid=$_GET['qid'];

include('config.php');
require_once 'TCPDF-main/tcpdf.php';
// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf->setPrintHeader(false);
$pdf->AddPage();
$sql = "SELECT * FROM quatation where id='$qid'";  

      $result = mysqli_query($con, $sql);
       $row = mysqli_fetch_assoc($result);
      
$html = '<!DOCTYPE html>
        <html>
        <head>
            
            <title>PDF</title>
            
            <style type="text/css">
                        body{
                            font-family: Book Antiqua, Palatino, Palatino Linotype, Palatino LT STD, Georgia, serif;
                        }
                       th{
                           font-size:14px;
                       }
                       td{
                           font-size:12px;
                       }
                       table tr {
                        page-break-inside: avoid;
                        height:20px;
                        }
                        td,tr,th{
                           border:1px solid #9ea3a7;
                            padding:8px;
                        }

                         
                       
            </style>

        </head>
        <body>
        
            <br>
            <h1 style="text-align:center"><b>Quatation</b></h1><br><br><br><br><br>
                   
                    
                                <h2> Client Name :- '.$row["client"].'</h2>
                           
                                <span style="font-size:14px;text-align:right;"><b>Invoice Id: #001'.$row["qid"].'</b></span> <br>
                                <span style="font-size:14px;
                                margin-left:40%"><b>Date: '.$row["created_at"].'</b></span> <br>
                                <span style="font-size:14px;
                                margin-left:40%"><b>Sq Ft.: '.$row["sq_ft"].'</b></span> <br> <br>
                               
                          
                        

                        <table   width="100%">

                            <tr style="background-color:lightgray">
                              <th><h3>Material</h3></th>
                               <th><h3>Quantity</h3></th>
                               <th><h3>Price</h3></th>
                              <th><h3>Amount</h3></th>
                            </tr>


                            <tr> 
                                <td><b>Cement</b></td> 
                                <td>'.$row["cement"].'</td>
                                <td>'.$row["cement_price_show"].'</td>
                                <td>'.$row["total_cement_amt"].'</td>

                            </tr>

                            <tr>   
                                <td ><b>Steel</b></td> 
                                <td>'.$row["steel"].'</td>
                                <td>'.$row["steel_price_show"].'</td>
                                <td>'.$row["total_steel_amt"].'</td>
                            </tr>
                            <tr>
                                <td ><b>Worker</b></td>
                                <td>'.$row["worker"].'</td>
                                <td>'.$row["worker_price_show"].'</td>
                                <td>'.$row["total_worker_amt"].'</td>
                            </tr>
                            <tr>  
                               <td ><b>Sand</b></td>  
                                <td>'.$row["sand"].'</td>
                                <td>'.$row["sand_price_show"].'</td>
                                <td>'.$row["total_sand_amt"].'</td>
                            </tr>
                            <tr>  
                                <td ><b>Bricks</b></td>  
                                <td>'.$row["bricks"].'</td>
                                <td>'.$row["bricks_price_show"].'</td>
                                <td>'.$row["total_bricks_amt"].'</td>
                            </tr>
                           
                            <tr >  
                                <th style="background-color: #e7f3f3;" colspan="3"><b>Total Amount</b></th>
                                <td style="background-color:#e7f3f3">'.$row["total_amount"].'</td>
                            </tr>  
                             <tr>  
                                <th style="background-color: #e7f3f3;" colspan="3"><b>Profit</b></th>
                                <td style="background-color: #e7f3f3;">'.$row["percent"].'</td>
                            </tr>  
                            <tr style="background-color: #e7f3f3;">  
                                <th colspan="3"><b>Total Quatation</b></th>
                                <td>'.$row["quatation"].'</td>
                            </tr> <br><br> 
                        </tbody>
                    </table>
                </body>';
    

  $pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true);  
 
$filename = $row["cement"].'_'.date('Ymdhis').'.pdf';
$filelocation = "C:\\xampp\htdocs\\construction_estimator\content";
$fileNL = $filelocation."\\".$filename;
$pdf->Output($fileNL, 'F');
unlink($filename);
ob_end_clean();

$filename = $filelocation."\\".$filename;
  
// Header content type
header("Content-type: application/pdf");
  
header("Content-Length: " . filesize($filename));
  
// Send the file to the browser.
readfile($filename);

?>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


<?php
header("Content-Type:application/json;charset=utf-8");

$which=$_GET["which"];
$con=mysqli_connect("localhost","root","");
mysqli_select_db($con,"library");
mysqli_query($con,"set names 'utf8'");
if($which != "all"){
$sql="select bookname,image,author,intro,comment,praise from books where class='$which' order by praise limit 5";
}else{
    $sql="select bookname,image,author,intro,comment,praise from books order by praise desc limit 5";
}
$resource=mysqli_query($con,$sql);

$pp;

while($assoc=mysqli_fetch_assoc($resource)){
    $i = '{"bookname":"'.$assoc["bookname"].'","image":"'.$assoc["image"].'","author":"'.$assoc["author"].'","intro":"'.$assoc["intro"].'","comment":"'.$assoc["comment"].'","praise":"'.$assoc["praise"].'"}';
    $pp = empty($pp) ? $i : $pp.",".$i;
}
echo '['.$pp.']';
//echo "{".$arr[0].",".$arr[1].",".$arr[2].",".$arr[3].",".$arr[4]."}";
mysqli_close($con);


?>
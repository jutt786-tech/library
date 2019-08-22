<?php
require_once('include/config.php');
if($_GET){
    if(isset($_GET['email'])){
        $email = $_GET['email'];
        if($email == ''){
            unset($email);
        }
    }
   
    if(!empty($email) ){
        $select = $conn->prepare("SELECT id FROM tblstudents WHERE EmailId=:email ");
        $select->execute(array(
            'email' => $email,
        ));

        if($select->fetchColumn() > 0){
            $update = $conn->prepare("UPDATE tblstudents  SET confirmation=1, token='' WHERE email=:email");
            $update->execute(array(
                'email' => $email
            ));
            echo 'succes';
        }
    }
}
?>
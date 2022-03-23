<?php
$fullName = $_POST["name"];
$userName = $_POST["username"];
$mobileNumber = $_POST["mobilenumber"];
$city = $_POST["city"];
$state = $_POST["state"];
$country = $_POST["country"];
$email = $_POST["email"];
$motherLanguage = $_POST["motherlanguage"];
$password=$POST["password"];
$confirmPassword=$POST["confirmPassword"]

require_once 'connect.php';

$findexist= "SELECT * FROM registered where name='$name'";
    $resultsearch=mysqli_query($conn,$findexist);
    if(mysqli_num_rows($resultsearch)>0)
    {
        while($row=mysqli_fetch_array($resultsearch))
        {
            $result["success"]="3";
            $result["message"]="user Already exist";
            echo json_encode($result);
            mysqli_close($conn);
        }
    }
    else(
        $sql= "INSERT * FROM registered 
        
        (name,username,mobilenumber,city,
        state,country,email,motherlanguage,password,confirmPassword)

         VALUES('$fullName','$userName','$mobileNumber','$city',
         '$state','$country','$email','$motherLanguage','$password','$confirmPassword');";
                if(mysqli_query($conn,$sql))
                    {
                            $result["success"]="1";
                            $result["message"]="Registration Successful";
                            
                            echo json_encode($result);
                            mysqli_close($conn);
                    }
                else
                    {
                            $result["success"]="0";
                            $result["message"]="Registration FAILED";
                            echo json_encode($result);
                            mysqli_close($conn);
                    }  
        )
?>
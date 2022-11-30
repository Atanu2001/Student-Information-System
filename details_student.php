<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style2.css">
</head>
<body>
    <?php
        include('includes/db_connect.php');
        $result=mysqli_query($conns,"select * from student_login where Roll_no='$_SESSION[loginid]'")
        ?>
        <table id="tab-des">
        <tr>
        <th>Roll No</th>
        <th>Name</th>
        <th>Guardian Name</th>
        <th>Date of Birth</th>
        <th>Contact Number</th>
        <th>E-mail</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Blood Group</th>
        </tr>
        
        <?php
	while($row=mysqli_fetch_array($result))
	{
	?>
	<tr>
		<td><?php echo $row['Roll_no'];?></td>
		<td><?php echo $row['Name'];?></td>
		<td><?php echo $row['Guardian'];?></td>
		<td><?php echo $row['DOB'];?></td>
		<td><?php echo $row['contact'];?></td>		
        <td><?php echo $row['email'];?></td>	
		<td><?php echo $row['Gender'];?></td>
		<td><?php echo $row['Address'];?></td>
        <td><?php echo $row['Blood_Group'];?></td>
	</tr>	
    <?php
    }
    ?>          
    </table>
    <?php
    mysqli_close($conns);
    ?>

    <!------subject details---->
    <div class="heading">subject Details</div>
    <div id="show_sub">
        <?php
            include('includes/db_connect.php');
            $result=mysqli_query($conns,"select * from subjects where Roll_no='$_SESSION[loginid]'");

            if(mysqli_num_rows($result)!=0)
            {
                ?>
                <table id="tab-des">
                    <tr>
                    
                    <th>Subject Code</th>
                    <th>Subject Name</th>
                    <th>Subject type</th>
                    </tr>
                    <?php
                     while($row=mysqli_fetch_assoc($result)){
                      echo "
                      <tr>
                        
                        <td>".$row['subject_code']."</td>
                        <td>".$row['paper_name']."</td>
                        <td>".$row['paper_type']."</td>
                      </tr>
                      ";
                     }
                    }
                    else{
                        echo "<p class='message'>No records to show</p>";
                    }
                    ?>
                </table>
                
    </div>
</body>
</html>
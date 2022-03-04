<?php
session_start();

//Registration
if(isset($_POST['reg_user'])){
	$username=$_POST['username'];
	$pwd1=$_POST['pwd1'];
	$pwd2=$_POST['pwd2'];
	$number=$_POST['number'];

	$db= mysqli_connect('localhost','root','','ecart');
	
	$user_check="SELECT * FROM registration where user_name='$username' LIMIT 1" ;
	$result=mysqli_query($db,$user_check);
	$user=mysqli_fetch_assoc($result);
	
	if($pwd1===$pwd2)
	{
		$pwd=md5($pwd1);
		if($user)
		{
			if($user['name']===$username)
			{
				echo "username already exist";
			}
		}
		else
		{
			$sql="INSERT INTO registration(user_name,number,password) values('$username',$number,'$pwd')";
			if($db->query($sql)){
				$_SESSION['username']=$username;
				$_SESSION['success']="You are now logged in";
				header("location:index.php");
			}
			else
			{
				echo "Error:".$sql." ".$db->error;
			}
		}
	}
	else
	{
		echo "Entered passwords doesn't match";
	}
	

}

//Login
if(isset($_POST['log_user'])){

	$username=$_POST['username'];
	$pswd=$_POST['pwd'];
	$db=mysqli_connect('localhost','root','','ecart');
	$epwd=md5($pswd);
	$sql="SELECT * FROM registration where user_name='$username' and password='$epwd'";
	$result=mysqli_query($db,$sql);
	$user=mysqli_fetch_assoc($result);
	if($user)
	{
			$_SESSION['username']=$username;
			$_SESSION['success']="Logged in successfully";
			header('location:index.php');
	}
	else
	{
		echo "Enter valid username and password";
	}
}

?>
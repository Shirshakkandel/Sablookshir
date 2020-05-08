<?php  
ob_start(); //Turns on output buffering 
session_start();
$con = mysqli_connect("localhost", "shirshak_shirshak", "@passwordfortrade2020", "shirshak_sablook"); //Connection variable

if(mysqli_connect_errno()) 
{
	echo "Failed to connect: " . mysqli_connect_errno();
}
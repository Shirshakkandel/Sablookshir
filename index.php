<?php 
	include 'includes/header.php';

	?>

	    <!---user_detail in 'left' which contain 'image and fullname' inside achor(a) tag and 'Post and likes' in one PHP code-->
  
	<div class="user_details column" >
	    <a href="<?php echo $userLoggedIn ?>"> <img src="<?php echo $user['profile_pic']; ?>"></a>

	    <div class="user_details_left_right">
			<a href="<?php echo $userLoggedIn; ?>">
			<?php 
			echo $user['first_name'] . " " . $user['last_name'];
			 ?>
			</a>
			<br>
			<?php echo "Posts: " . $user['num_posts']."<br>"; 
			echo "Likes: " . $user['num_likes'];

			?>
		</div>  
	</div>       <!--END of $userLoggedIn detail-->


	<div style="width:70%" class="main_column column">  <!--Start of main_column-->
					<!--SUBMIT form start-->
				<form class="post_form" action="index.php" method="POST" enctype="multipart/form-data">
					
					<textarea name="post_text" id="post_text" placeholder="Got something to say?"></textarea>
					<input type="submit" name="post" id="post_button" value="Post">
					<input  style="margin-top:5px;" type="file" name="fileToUpload" id="fileToUpload">
					<hr>

				</form>  <!--SUBMIT form ENDS-->


				<!--MAIN post area to load post-->
			    <div class="posts_area"></div>
				<img id="loading" src="assets/images/icons/loading.gif">

				<!-- END OF MAIN post area to load post-->

	</div> <!--END of main_column-->

	<div  class="user_details column">

		<h4>Popular</h4>

		<div class="trends">
			<?php 
			$query = mysqli_query($con, "SELECT * FROM trends ORDER BY hits DESC LIMIT 9");

			foreach ($query as $row) {
				
				$word = $row['title'];
				$word_dot = strlen($word) >= 14 ? "..." : "";

				$trimmed_word = str_split($word, 14);
				$trimmed_word = $trimmed_word[0];

				echo "<div style'padding: 1px'>";
				echo $trimmed_word . $word_dot;
				echo "<br></div><br>";


			}

			?>
		</div>


	</div>

    	<?php 
			
			if(isset($_POST['post'])){

			$uploadOk = 1;
			$imageName = $_FILES['fileToUpload']['name'];//get out name of photo lile shirshak.png
			$errorMessage = "";

			if($imageName != "") {
				$targetDir = "assets/images/posts/";
				$imageName = $targetDir . uniqid() . basename($imageName);//assets/images/posts/kja;dlkfjadshirshak.png
				$imageFileType = pathinfo($imageName, PATHINFO_EXTENSION);//find out type of image like png,jpeg

				if($_FILES['fileToUpload']['size'] > 10000000) {
					$errorMessage = "Sorry your file is too large";
					$uploadOk = 0;
				}
					//find out if image in not in three image type(jpeg,png,jpg)
				if(strtolower($imageFileType) != "jpeg" && strtolower($imageFileType) != "png" && strtolower($imageFileType) != "jpg") {
					$errorMessage = "Sorry, only jpeg, jpg and png files are allowed";
					$uploadOk = 0;
				}

				if($uploadOk) {
					if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $imageName)) {
						//image uploaded okay
					}
					else {
						//image did not upload
						$uploadOk = 0;
					}
				}

			}

			if($uploadOk) {
				$post = new Post($con, $userLoggedIn);
				$post->submitPost($_POST['post_text'], 'none', $imageName);
			}
			else {
				echo "<div  style='text-align:center;' class='alert alert-danger'>
						$errorMessage
					</div>";
			}

		}

		?>


	<script>
	var userLoggedIn = '<?php echo $userLoggedIn; ?>';

	$(document).ready(function() {

		$('#loading').show();

		//Original ajax request for loading first posts 
		$.ajax({
			url: "includes/handlers/ajax_load_posts.php",
			type: "POST",
			data: "page=1&userLoggedIn=" + userLoggedIn,
			cache:false,

			success: function(data) {
				$('#loading').hide();
				$('.posts_area').html(data);
			}
		});

		$(window).scroll(function(){
			var height= $('.posts_area').height(); //div containing post
			var scroll_top=$(this).scrollTop(); 
			var page=$('post_area').find('.nextPage').val();
			var noMorePosts= $('.posts_area').find('.noMorePosts').val();
			if((document.body.scrollHeight == document.body.scrollTop + window.innerHeight) && noMorePosts =='false'){
				 $('#loading').show();

				 var ajaxReq = $.ajax({
					 url:"includes/handlers/ajax_load_posts.php",
					 type:"POST",
					 data:"page=" +page+ "&userLoggedIn" + userLoggedIn,
					 cache:false,

					 sucess: function(data){
						 $('.post_area').find('.nextPage').remove();//remove current nextpage
						 $('.post_area').find('.noMorePosts').remove();

						 $('#loading').hide();
						 $('.posts_area').append(data);
					 }
				 });
			}  // End IF
			 	return false;

		}); //End (window).scroll(function);

	});





</script>

</div>
</body>
</html>


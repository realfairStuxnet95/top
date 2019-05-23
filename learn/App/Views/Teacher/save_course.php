<?php
require $_SERVER['DOCUMENT_ROOT'].'/lean/learn/App/Views/Utils/const.php';
require LOADER;
$response=true;
$current_date=$function->getCurrentDate().' '.$function->getCurrentTime();
if(count($_FILES["file"]["name"]) > 0)
{
	//$output = '';
	$title=$function->sanitize($_POST["course_title"]);
	$price=$function->sanitize($_POST["course_price"]);
	$teacher=$function->sanitize($_POST["assigned_teacher"]);
	$summary=htmlspecialchars($_POST["course_summary"]);
	for($count=0; $count<count($_FILES["file"]["name"]); $count++)
	{
		$file_name = $_FILES["file"]["name"][$count];
		$tmp_name = $_FILES["file"]['tmp_name'][$count];
		$file_array = explode(".", $file_name);
		$file_extension = end($file_array);
		$location = 'files/' . $file_name;
		$new_name = $file_array[0] . '-'. rand() .rand().'.' . $file_extension;
		$path = ROOT_URL."Courses/" . $new_name;
		if(move_uploaded_file($tmp_name, $path))
		{
			$save_status=$admin->saveCourse($title,$price,$teacher,$summary,$new_name,$current_date);
			if($save_status){
				echo "200";
			}else{
				echo "403";
			}
		}else{
		echo "Error While Uploading  Please Contact System Administrator.";
		}
	}
}else{
  echo "Please Select Files";
}
?>
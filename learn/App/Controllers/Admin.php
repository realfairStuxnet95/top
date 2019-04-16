<?php 

class Admin extends Execute{
	private $allowed_status=array("ACTIVE","SUBMITTED","ENDED","PENDING");
	private $users_types=array(1,2,3,4,5);
	//save course
	public function saveCourse($title,$price,$teacher,$summary,$path,$current_date){
		$array=array("title"=>$title,"course_price"=>$price,"assigned_teacher"=>$teacher,"summary"=>$summary,"status"=>'ACTIVE',"regDate"=>$current_date,"path"=>$path);
		return $this->multi_insert(Tables::courses(),$array);
	}
	//load available courses
	public function loadCourses($status){
		$sql='';
		if($status=='*'){
			$sql="SELECT * FROM ".Tables::courses()." ORDER BY timestamp DESC LIMIT 50";
		}elseif(in_array(strtoupper($status), $this->allowed_status)){
			$sql="SELECT * FROM ".Tables::courses()." WHERE status=\"$status\" ORDER BY timestamp DESC LIMIT 50";
		}else{
			$sql="SELECT * FROM ".Tables::courses()." ORDER BY timestamp DESC LIMIT 50";	
		}

		return $this->querying($sql);
		
	}
	//public side
	public function loadPublicCourses($status){
		$sql='';
		if($status=='*'){
			$sql="SELECT * FROM ".Tables::courses()." ORDER BY timestamp DESC LIMIT 6";
		}elseif(in_array(strtoupper($status), $this->allowed_status)){
			$sql="SELECT * FROM ".Tables::courses()." WHERE status=\"$status\" ORDER BY timestamp DESC LIMIT 6";
		}else{
			$sql="SELECT * FROM ".Tables::courses()." ORDER BY timestamp DESC LIMIT 6";	
		}

		return $this->querying($sql);
		
	}
	public function publicAllCourses(){
		$sql="SELECT * FROM ".Tables::courses()." WHERE status='ACTIVE' ORDER BY timestamp DESC";
		return $this->querying($sql);
	}
	public function loadCourseInfo($course_id){
		$sql="SELECT * FROM ".Tables::courses()." WHERE id=\"$course_id\" LIMIT 1";
		return $this->querying($sql);
	}
	//load course instructor
	public function getTeacherField($teacher_id,$field_name){
		$array="SELECT * FROM ".Tables::users()." WHERE user_type=2 AND id=\"$teacher_id\"";
		$result=$this->querying($array);
		$field_value='';
		foreach ($result as $key => $value) {
			$field_value=$value[$field_name];
		}
		return $field_value;
	}
	//end of public side

	//load assigned courses
	public function loadTeacherCourses($teacher_id){
		$sql="SELECT * FROM ".Tables::courses()." WHERE assigned_teacher=\"$teacher_id\" ORDER BY id DESC LIMIT 50";
		return $this->querying($sql);
	}
	//load users
	public function loadUsers($user_type,$status){
		$sql='SELECT * FROM '.Tables::users();
		if(in_array($user_type, $this->users_types)){
			$sql.=" WHERE user_type=\"$user_type\"";
		}
		if(in_array($status, $this->users_types)){
			$sql.=" AND status=\"$status\"";
		}
		$sql.=" ORDER BY id DESC LIMIT 50";
		return $this->querying($sql);
	}

	//save course credits
	public function saveCourseCredits($course_id,$teacher_id,$title,$summary,$attachment,$current_date){
		$array=array("course_id"=>$course_id,"teacher_id"=>$teacher_id,"credit"=>$title,"summary"=>$summary,"attachment"=>$attachment,"status"=>'ACTIVE',"save_date"=>$current_date);
		return $this->multi_insert(Tables::credits(),$array);
	}
	//load course credits
	public function getCourseCredits($course_id,$teacher_id){
		$sql="SELECT * FROM ".Tables::credits()." WHERE course_id=\"$course_id\" AND teacher_id=\"$teacher_id\" ORDER BY id DESC LIMIT 50";
		return $this->querying($sql);
	}
	//save credit quiz
	public function saveQuiz($credit,$title,$summary,$current_date){
		$array=array("credit_id"=>$credit,"title"=>$title,"summary"=>$summary,"save_date"=>$current_date);
		return $this->multi_insert(Tables::quiz(),$array);
	}
	//load credit quiz
	public function getQuiz($credit){
		$sql="SELECT * FROM ".Tables::quiz()." WHERE credit_id=\"$credit\" ORDER BY id DESC LIMIT 50";
		return $this->querying($sql);
	}
	//load quiz questions and answers
	public function getQuizQuestions($quiz){
		$sql="SELECT * FROM ".Tables::questions()." WHERE quiz_id=\"$quiz\" ORDER BY id ASC LIMIT 50";
		return $this->querying($sql);
	}
	//save question
	public function saveQuestion($quiz_id,$question,$answer1,$answer2,$answer3,$answer4,$answer5,$current_date){
		$array=array("quiz_id"=>$quiz_id,"question"=>$question,"answer1"=>$answer1,"answer2"=>$answer2,"answer3"=>$answer3,"answer4"=>$answer4,"answer5"=>$answer5,"status"=>'ACTIVE',"save_date"=>$current_date);
		return $this->multi_insert(Tables::questions(),$array);
	}
	//choose correct answer
	public function correctAnswer($question_id,$field_name){
		$array=array("correct"=>$field_name);
		$where=array("id"=>$question_id);
		return $this->query_update(Tables::questions(),$where,$array);
	}
}
$admin=new Admin();
?>
<?php 

class Student extends Execute{

	//save students
	public function registerStudent($fname,$lname,$email,$password,$phone,$profession,$degree,$country,$city,$save_date){
		$array=array("fname"=>$fname,"lname"=>$lname,"email"=>$email,"password"=>$password,"phone"=>$phone,"profession"=>$profession,"degree"=>$degree,"country"=>country,"city"=>$city,"save_date"=>$save_date,"status"=>'PENDING');
		return $this->multi_insert(Tables::students(),$array);
	}
}
$student=new Student();
?>
<?php

class User
{
    public $name;
    public $username;
    public $email;
    protected $password;
    private $role;

//    private $db;

    public function __construct($uname = null, $pwd = null, $email = null, $name = null, $role = 'user')
    {
        $this->username = $uname;
        $this->password = $pwd;
        $this->email = $email;
        $this->name = $name;
        $this->role = $role;

//      $this->db = new Database;
    }

    public function getRole()
    {
        return $this->role;
    }

    public function setRole($role)
    {
        $this->role = $role;
    }

    public function getPassword()
    {
        return $this->password;
    }
    public function setPassword($pwd)
    {
        $this->password = $pwd;
    }

    // Add User / Register
    public function addUser($data)
    {
      // Prepare Query
        Database::getInstance()->query("INSERT INTO users (first_name,last_name,username,`e-mail`,password,user_type)  
      VALUES (:f_name,:l_name,:u_name,:e_mail,:pass,'USER')");

      // Bind Values
        Database::getInstance()->bind(':f_name', $data['fname']);
        Database::getInstance()->bind(':l_name', $data['lname']);
        Database::getInstance()->bind(':u_name', $data['uname']);
        Database::getInstance()->bind(':e_mail', $data['email']);
        Database::getInstance()->bind(':pass', $data['password']);
      
      //Execute
        if (Database::getInstance()->execute()) {
        return true;
      } else {
        return false;
      }
    }

    // Find User by Email
    public function findUserByEmail($email){
        Database::getInstance()->query("SELECT * FROM users WHERE `e-mail` = :email");
        Database::getInstance()->bind(':email', $email);

        $row = Database::getInstance()->single();

      //Check Rows
        if (Database::getInstance()->rowCount() > 0) {
        return true;
      } else {
        return false;
      }
    }

    // Login / Authenticate User
    public function verify($data)
    {
        Database::getInstance()->query("SELECT * FROM users WHERE username = :uname");
        Database::getInstance()->bind(':uname', $data['username']);

        $row = Database::getInstance()->single();

//      $hashed_password = $row->password;
//      password_verify($password, $hashed_password);
        if (isset($row->username)) {
            return true;
      } else {
        return false;
      }
    }

    //gets the type of the user
    public function authenticateUser($data)
    {
        Database::getInstance()->query("SELECT * FROM `users` WHERE `username` = :uname AND `password` = :pwd");
        Database::getInstance()->bind(':uname', $data['username']);
        Database::getInstance()->bind(':pwd', $data['password']);

        $row = Database::getInstance()->single();

        $ut = $row->userType;
        return $ut;
    }

    // Find User By ID
    public function getUserById($id){
        Database::getInstance()->query("SELECT * FROM users WHERE id = :id");
        Database::getInstance()->bind(':id', $id);

        $row = Database::getInstance()->single();

        return $row;
    }

}
/*
$u=new User("dawit","test123");
$f = $u->verify(["username"=>"dawit","password"=>"test123"]);
if($f){
  echo 'pases';
}else{
  echo 'dont pass';
}
*/
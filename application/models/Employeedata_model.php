<?php
class Employeedata_model extends CI_Model {
	
	public function __construct(){
        parent::__construct();		
        $this->load->database();
    }
    function insertEmployee($data) {
        $this->db->insert_batch('employeedata', $data);
    }
    function getAllEmployee() {
          $result = $this->db->get('employeedata');
        return $result->result_array();
    }
    function getEmployeeDataForChart() {
        $sql = "SELECT `joining_year` AS `year_joined`, COUNT(*) AS `total_employees` FROM `employeedata` GROUP BY `joining_year`";
        $query = $this->db->query($sql);
        return $query->result_array();
  }

    
}

?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Employeedata extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Employeedata_model');
        $this->load->library('csvimport');
        $this->load->helper('file');
    }
	public function index(){
			$data = array();
			$chart = $this->Employeedata_model->getEmployeeDataForChart();	
			$data['year_joined'] = implode(',', array_column($chart, 'year_joined'));
			$data['total_employees'] = implode(',', array_column($chart, 'total_employees'));

			$data['employeedata'] = $this->Employeedata_model->getAllEmployee();
			$this->load->view('employee_data', $data);
	}

	public function import() {
		$path = FCPATH . "uploads/";
		$config['upload_path'] = $path;
		$config['allowed_types'] = 'csv';
		$config['max_size'] = 1024000;
		$this->load->library('upload', $config);

		$this->upload->initialize($config);

		if (!$this->upload->do_upload('file')) {
			$error = $this->upload->display_errors();

			$this->session->set_flashdata('error', $this->upload->display_errors());
			redirect("Employeedata/index");
		} else {

			$file_data = $this->upload->data();
			$file_path = base_url() . "uploads/" . $file_data['file_name'];

			$csv_data = $this->csvimport->parse_file($file_path);

			$date = date("Y-m-d H:i:s");

			if ($csv_data) {
				
				foreach ($csv_data as $row) {
					$insert_data[] = array(
						'emp_name' 		=> $row['emp_name'],
						'emp_mobile_no' => $row['emp_mobile_no'],
						'emp_email'		=> $row['emp_email'],
						'emp_code' 		=> $row['emp_code'],
						'joining_year' 	=> $row['joining_year'],
						'joining_date' 	=> $row['joining_date'],
						'created_by' 	=> $row['created_by'],
						'created_date' 	=> $date,
						'modified_by' 	=> $row['modified_by'],
						'modified_date' => $date,
					);
				}
				
			$this->Employeedata_model->insertEmployee($insert_data);
			$this->session->set_flashdata('success', "Csv imported successfully");
				redirect("Employeedata/index");

			} else {
				$data['error'] = "Error occured";
				$this->session->set_flashdata('error', $data['error']);
				redirect("Employeedata/index");
			}
			
		}
	} 
	public function exportEmoloyeeData()
	{
		$filename = 'employeeData_'.date('Ymd').'.csv';
		header("Content-Description: File Transfer");
		header("Content-Disposition: attachment; filename=$filename");
		header("Content-Type: application/csv; "); 

		$empData = $this->Employeedata_model->getAllEmployee();
		$file = fopen('php://output', 'w');

		$header = array("ID","Emp Name","Emp Mobile No","Emp Email","Emp_Code","Joining Year","Joining Date","created By","Created Date","Modifide By","Modified Date");
		fputcsv($file, $header);
		foreach ($empData as $key=>$line){
		 	fputcsv($file,$line);
		}
		fclose($file);
		exit;
	}

}

<html>
    <head>
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/bootstrap.min.css"> 
    <link rel="stylesheet" href="<?php echo base_url();?>assets/css/jquery.dataTables.min.css"> 
        <script src="<?php echo base_url();?>assets/js/Chart.js"></script>
        <script src="<?php echo base_url();?>assets/js/jquery.dataTables.min.js"></script>
        <script src="<?php echo base_url();?>assets/js//jquery-3.5.1.js"></script>
        <script src="<?php echo base_url();?>assets/js/jquery.dataTables.min.js"></script>
    </head>
    <body>
        <nav class="navbar navbar-light" style="background-color: #e3f2fd;">
            <h2 class="pt-4">Employee Details</h2>
            <form action="<?php echo base_url('Employeedata/import'); ?>" method="post" enctype="multipart/form-data">
                <input type="file" name="file" />
                <input type="submit" class="btn btn-primary" name="importSubmit" value="IMPORT">
                <a href='<?php echo  base_url('Employeedata/exportEmoloyeeData'); ?>' class="btn btn-success  ">Export</a>
            </form>
        </nav>
            <div class="container">
                <div class="row">
                    <div class="col-md-12 pt-4">
                        <?php if ($this->session->flashdata('success')) { ?>
                            <div class="alert alert-success">
                                <a href="#" class="close" data-dismiss="alert">&times;</a>
                                <strong>Success!</strong> <?php echo $this->session->flashdata('success'); ?>
                            </div> 
                        <?php } elseif ($this->session->flashdata('error')) { ?>
                            <div class="alert alert-danger">
                                <a href="#" class="close" data-dismiss="alert">&times;</a>
                                <strong>Error!</strong> <?php echo $this->session->flashdata('error'); ?>
                            </div>
                        <?php }?>
                        <table class="table  display"  id="example" style="width:100%" >
                            <thead class="thead-dark">
                                <tr>
                                    <th>SrNo.</th>
                                    <th>Emp Code</th>
                                    <th>Emp Name</th>
                                    <th>Emp Mobile No</th>
                                    <th>Emp Email</th>
                                    <th>Joining Year</th>
                                    <th>Joining Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php if(!empty($employeedata)){ foreach($employeedata as $row){ ?>
                                <tr>
                                    <td><?php echo $row['id']; ?></td>
                                    <td><?php echo $row['emp_code']; ?></td>
                                    <td><?php echo $row['emp_name']; ?></td>
                                    <td><?php echo $row['emp_mobile_no']; ?></td>
                                    <td><?php echo $row['emp_email']; ?></td>
                                    <td><?php echo $row['joining_year']; ?></td>        
                                    <td><?php echo $row['joining_date']; ?></td>
                                </tr>
                                <?php } }else{ ?>
                                <tr><td colspan="7">Employee Data not found...!!</td></tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="row">
                  <div class="col-md-2">
                  </div>
                  <div class="col-md-8">
                    <div class="card  mt-5 mb-5" style="width: :100%">
                        <div class="card-body">
                            <h5 class="card-title">Employee Joining Chart</h5>
                            <canvas id="myChart" style="width:100%;max-width:600px"></canvas>
                        </div>
                        </div>
                    </div>
                    <div class="col-md-2">
                  </div>
                </div>
            </div>

            <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
            var xValues = [ <?php echo $year_joined; ?>];
            var yValues = [<?php echo $total_employees; ?>];
            var barColors = ['red', 'blue', 'green', 'yellow', 'orange', 'purple', 'pink'];

            new Chart("myChart", {
            type: "bar",
            data: {
                labels: xValues,
                datasets: [{
                backgroundColor: barColors,
                data: yValues
                }]
            },
            options: {
                legend: {display: false},
                title: {
                display: true,
                text: "Year Wise Data of Employee Joining"
                }
            }
            });
        </script>
    </body>
</html>
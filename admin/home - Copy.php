<h2><?php echo $_settings->userdata('firstname') ?>, <i>Welcome to <?php echo $_settings->info('name') ?></i></h2>
<hr class="bg-light">
<?php if($_settings->userdata('type') != 3): ?>
  <div class="row">
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box bg-danger">
        <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-file-alt "></i></span>

        <div class="info-box-content">
          <span class="info-box-text ">Pending Applications</span>
          <span class="info-box-number text-right">
            <?php 
            $pending = $conn->query("SELECT * FROM `leave_applications` where date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 0 ")->num_rows;
            echo number_format($pending);
            ?>
            <?php ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3 bg-primary">
        <span class="info-box-icon bg-primary elevation-1"><i class="fa fa-building"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Total Departments</span>
          <span class="info-box-number text-right">
            <?php 
            $department = $conn->query("SELECT id FROM `department_list` ")->num_rows;
            echo number_format($department);
            ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->

    <!-- fix for small devices only -->
    <div class="clearfix hidden-md-up"></div>

    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3 bg-secondary">
        <span class="info-box-icon bg-secondary elevation-1"><i class="fa fa-sitemap"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Total Designations</span>
          <span class="info-box-number text-right">
            <?php 
            $designation = $conn->query("SELECT id FROM `designation_list`")->num_rows;
            echo number_format($designation);
            ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3 bg-purple">
        <span class="info-box-icon bg-purple elevation-1"><i class="fas fa-list"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Total Type of Leave</span>
          <span class="info-box-number text-right">
            <?php 
            $leave_types = $conn->query("SELECT id FROM `leave_types` where status = 1 ")->num_rows;
            echo number_format($leave_types);
            ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
  </div>
  <?php else: ?>
    <div class="row">
      <div class="col-12 col-sm-6 col-md-3">
        <div class="info-box bg-danger">
          <span class="info-box-icon bg-danger elevation-1"><i class="far fa-file"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Pending Applications</span>
            <span class="info-box-number text-right">
              <?php 
              $pending = $conn->query("SELECT * FROM `leave_applications` where date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 0 and user_id = '{$_settings->userdata('id')}' ")->num_rows;
              echo number_format($pending);
              ?>
              <?php ?>
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <div class="col-12 col-sm-6 col-md-3">
        <div class="info-box bg-primary">
          <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-th-list"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Upcoming Leave</span>
            <span class="info-box-number text-right">
              <?php 
              $upcoming = $conn->query("SELECT * FROM `leave_applications` where date(date_start) > '".date('Y-m-d')."' and status = 1 and user_id = '{$_settings->userdata('id')}' ")->num_rows;
              echo number_format($upcoming);
              ?>
              <?php ?>
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
    <div class="col-12 col-sm-6 col-md-3">
        <div class="info-box bg-success">
          <span class="info-box-icon bg-success elevation-1"><i class="fas fa-file-alt"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Pending Leave Credits</span>
            <span class="info-box-number text-right">
              <?php 
              $pendingCr = $conn->query("SELECT * FROM `leave_credits` where date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 0 and user_id = '{$_settings->userdata('id')}' ")->num_rows;
              echo number_format($pendingCr);
              ?>
              <?php ?>
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <?php if($_settings->userdata('position_id') == 2): ?>
      <div class="col-12 col-sm-6 col-md-3">
        <div class="info-box bg-warning">
          <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-file-alt"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">COC Expiry Date</span>
            <span class="info-box-number text-right">
              <?php 
              // $expire_coc = $conn->query("SELECT * FROM `leave_credits` where leave_type_id = 5 and date_format(date_end,'%Y') = '".date('Y')."' and status = 1 and user_id = '{$_settings->userdata('id')}' ")->num_rows;echo number_format($expire_coc);
              $current_date = date('Y-12-31');
              $total_expire = $conn->query("SELECT SUM(`credit_days`) as total FROM `leave_credits` where user_id = '{$_settings->userdata('id')}' and status = 1 and date_format(date_end,'%Y') = '".date('Y')."' and leave_type_id = 5 ")->fetch_array()['total'];
              echo $current_date.' '.$total_expire;
              ?>
              <?php ?>
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
        <?php endif; ?>
  <?php endif; ?>

<!-- start of second row -->

<hr class="bg-light">
<?php if($_settings->userdata('type') != 3): ?>
  <div class="row">
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box bg-green">
        <span class="info-box-icon bg-green elevation-1"><i class="fas fa-credit-card"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Pending Leave Credits</span>
          <span class="info-box-number text-right">
            <?php 
            $pendingCr = $conn->query("SELECT * FROM `leave_credits` where date_format(date_start,'%Y') = '".date('Y')."' and date_format(date_end,'%Y') = '".date('Y')."' and status = 0 ")->num_rows;
            echo number_format($pendingCr);
            ?>
            <?php ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3 bg-warning">
        <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-users"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Total Employees</span>
          <span class="info-box-number text-right">
            <?php 
            $employee = $conn->query("SELECT id FROM `users` where type = 3 ")->num_rows;
            echo number_format($employee);
            ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <!-- /.col -->

    <!-- fix for small devices only -->
    <div class="clearfix hidden-md-up"></div>

    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3 bg-lightblue">
        <span class="info-box-icon bg-lightblue elevation-1"><i class="fas fa-chalkboard-teacher"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Total Teachers</span>
          <span class="info-box-number text-right">
            <?php 
            $teacher = $conn->query("SELECT id FROM `users` where position_id = 1 and type = 3")->num_rows;
            echo number_format($teacher);
            ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
    <div class="col-12 col-sm-6 col-md-3">
      <div class="info-box mb-3 bg-maroon">
        <span class="info-box-icon bg-maroon elevation-1"><i class="fas fa-users-cog"></i></span>

        <div class="info-box-content">
          <span class="info-box-text">Total Non-Teaching</span>
          <span class="info-box-number text-right">
            <?php 
            $nonteaching = $conn->query("SELECT id FROM `users` where position_id = 2 and type = 3 ")->num_rows;
            echo number_format($nonteaching);
            ?>
          </span>
        </div>
        <!-- /.info-box-content -->
      </div>
      <!-- /.info-box -->
    </div>
  </div>

      
<?php endif; ?>
<!-- <?php if($_settings->userdata('type') == 1): ?>
    <div class="row">
      <div class="col-12 col-sm-6 col-md-3">
        <div class="info-box bg-info">
          <span class="info-box-icon bg-info elevation-1"><i class="fas fa-file-alt"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">COC Expiry Date</span>
            <span class="info-box-number text-right">
              <?php 
              // $expire_coc = $conn->query("SELECT * FROM `leave_credits` where leave_type_id = 5 and date_format(date_end,'%Y') = '".date('Y')."' and status = 1 and user_id = '{$_settings->userdata('id')}' ")->num_rows;echo number_format($expire_coc);
              $current_date = date('Y-12-31');
              $total_expire = $conn->query("SELECT SUM(`credit_days`) as total FROM `leave_credits` where user_id = '{$_settings->userdata('id')}' and status = 1 and date_format(date_end,'%Y') = '".date('Y')."' and leave_type_id = 5 ")->fetch_array()['total'];
              echo $current_date.' '.$total_expire;
              ?>
              <?php ?>
            </span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div> -->
<?php endif; ?>
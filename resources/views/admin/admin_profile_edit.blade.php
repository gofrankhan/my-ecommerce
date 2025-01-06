@extends('admin.admin_master')
@section('admin')
<div class="container-full">

    <!-- Main content -->
    <section class="content">

		 <!-- Basic Forms -->
		  <div class="box">
			<div class="box-header with-border">
			  <h4 class="box-title">Edit Admin Profile</h4>
			  <h6 class="box-subtitle">You can update your information from here</a></h6>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
			  <div class="row">
				<div class="col">
					<form novalidate="">
					  <div class="row">
						<div class="col-6">						
							<div class="form-group">
								<h5>Basic Text Input <span class="text-danger">*</span></h5>
								<div class="controls">
									<input type="text" name="text" class="form-control" required="" data-validation-required-message="This field is required"> <div class="help-block"></div></div>
								<div class="form-control-feedback"><small>Add <code>required</code> attribute to field for required validation.</small></div>
							</div>
							<div class="form-group">
								<h5>Email Field <span class="text-danger">*</span></h5>
								<div class="controls">
									<input type="email" name="email" class="form-control" required="" data-validation-required-message="This field is required"> <div class="help-block"></div></div>
							</div>
							<div class="form-group">
								<h5>Password Input Field <span class="text-danger">*</span></h5>
								<div class="controls">
									<input type="password" name="password" class="form-control" required="" data-validation-required-message="This field is required"> <div class="help-block"></div></div>
							</div>
							<div class="form-group">
								<h5>Repeat Password Input Field <span class="text-danger">*</span></h5>
								<div class="controls">
									<input type="password" name="password2" data-validation-match-match="password" class="form-control" required=""> <div class="help-block"></div></div>
							</div>
							<div class="form-group">
								<h5>File Input Field <span class="text-danger">*</span></h5>
								<div class="controls">
									<input type="file" name="file" class="form-control" required=""> <div class="help-block"></div></div>
							</div>
						</div>
                        <div class=row>
                            <div class="text-xs-right">
                                <button type="submit" class="btn btn-rounded btn-info">Update</button>
                            </div>
                        </div>
					</form>

				</div>
				<!-- /.col -->
			  </div>
			  <!-- /.row -->
			</div>
			<!-- /.box-body -->
		  </div>
		  <!-- /.box -->

		</section>
<!-- /.content -->
</div>
@endsection
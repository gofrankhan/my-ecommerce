@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <div class="container-full">

        <!-- Main content -->
        <section class="content">

            <!-- Basic Forms -->
            <div class="box">
                <div class="box-header with-border">
                    <h4 class="box-title">Admin Change Password</h4>
                    <h6 class="box-subtitle">You can update your password from here</a></h6>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col">
                            <form method="post" action="{{ route('admin.update.password') }}">
                                @csrf
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <h5>Current Password <span class="text-danger">*</span></h5>
                                            <div class="controls">
                                                <input type="password" id="current_password" name="oldpassword"
                                                    class="form-control" required=""
                                                    data-validation-required-message="This field is required">
                                                <div class="help-block"></div>
                                            </div>
                                            <div class="form-control-feedback"><small></small></div>
                                        </div>
                                        <div class="form-group">
                                            <h5>New Password <span class="text-danger">*</span></h5>
                                            <div class="controls">
                                                <input type="password" name="password" id="password" class="form-control"
                                                    required=""
                                                    data-validation-required-message="This field is required">
                                                <div class="help-block"></div>
                                            </div>
                                            <div class="form-control-feedback"><small></small></div>
                                        </div>
                                        <div class="form-group">
                                            <h5>Confirm Password <span class="text-danger">*</span></h5>
                                            <div class="controls">
                                                <input type="password" name="password_confirmation"
                                                    id="password_confirmation" class="form-control" required=""
                                                    data-validation-required-message="This field is required">
                                                <div class="help-block"></div>
                                            </div>
                                            <div class="form-control-feedback"><small></small></div>
                                        </div>
                                        <div class="form-group">
                                            <div class="text-xs-right">
                                                <button type="submit" class="btn btn-rounded btn-info">Change
                                                    Password</button>
                                            </div>
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

@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

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
                            <form method="post" action="{{ route('admin.profile.store') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-6">
                                        <div class="form-group">
                                            <h5>Admin Full Name <span class="text-danger">*</span></h5>
                                            <div class="controls">
                                                <input type="text" name="name" class="form-control" required=""
                                                    value="{{ $userData->name }}"
                                                    data-validation-required-message="This field is required">
                                                <div class="help-block"></div>
                                            </div>
                                            <div class="form-control-feedback"><small></small></div>
                                        </div>
                                        <div class="form-group">
                                            <h5>Admin Email <span class="text-danger">*</span></h5>
                                            <div class="controls">
                                                <input type="email" name="email" class="form-control" required=""
                                                    value="{{ $userData->email }}"
                                                    data-validation-required-message="This field is required">
                                                <div class="help-block"></div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="text-xs-right">
                                                <button type="submit" class="btn btn-rounded btn-info">Update</button>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="form-group">
                                            <h5>Admin Profile Image <span class="text-danger">*</span></h5>
                                            <div class="controls">
                                                <input type="file" name="profile_photo_path" id="profile_photo"
                                                    class="form-control" required="">
                                                <div class="help-block"></div>
                                            </div>
                                        </div>

                                        <div class="col-md-6">
                                            <img class="rounded-circle" id="profile_photo_preview"
                                                src="{{ !empty($userData->profile_photo_path) ? url('upload/admin_images/' . $userData->profile_photo_path) : asset('backend/images/user3-128x128.jpg') }}"
                                                alt="User Avatar">
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

    <script type="text/javascript">
        $(document).ready(function() {
            $('#profile_photo').change(function(e) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#profile_photo_preview').attr('src', e.target.result);
                }
                reader.readAsDataURL(e.target.files['0']);
            });
        });
    </script>
@endsection

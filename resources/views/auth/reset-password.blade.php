@extends('frontend.main_master')
@section('content')
    <div class="breadcrumb">
        <div class="container">
            <div class="breadcrumb-inner">
                <ul class="list-inline list-unstyled">
                    <li><a href="home.html">Home</a></li>
                    <li class='active'>Login</li>
                </ul>
            </div><!-- /.breadcrumb-inner -->
        </div><!-- /.container -->
    </div><!-- /.breadcrumb -->


    <div class="body-content">
        <div class="container">
            <div class="sign-in-page">
                <div class="row">
                    <!-- Sign-in -->
                    <div class="col-md-6 col-sm-6 sign-in">
                        <h4 class="">Forget Password</h4>
                        <div class="social-sign-in outer-top-xs">
                            <form method="POST" action="{{ route('password.store') }}">
                                @csrf
                                <!-- Password Reset Token -->
                                <input type="hidden" name="token" value="{{ $request->route('token') }}">
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Email Address <span>*</span></label>
                                    <input type="email" id="email" name="email"
                                        class="form-control unicase-form-control text-input">
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Password <span>*</span></label>
                                    <input type="password" id="password" name="password"
                                        class="form-control unicase-form-control text-input">
                                </div>
                                <div class="form-group">
                                    <label class="info-title" for="exampleInputEmail1">Confirm Password
                                        <span>*</span></label>
                                    <input type="password" id="password_confirmation" name="password_confirmation"
                                        class="form-control unicase-form-control text-input">
                                </div>
                                <p class="">Provide your email address to recover password</p>
                                <button type="submit" class="btn-upper btn btn-primary checkout-page-button">Reset
                                    Password</button>
                            </form>
                        </div>
                    </div>
                    <!-- Sign-in -->
                </div><!-- /.row -->
            </div> <!-- /.sigin-in-->
            @include('frontend.body.brand')
        </div><!-- /.container -->
    </div><!-- /.body -->
@endsection

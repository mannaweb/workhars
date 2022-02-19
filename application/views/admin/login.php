<div class="row justify-content-center">
  <div class="col-xl-10 col-lg-12 col-md-9">
    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <div class="row">
          <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
          <div class="col-lg-6">
            <div class="p-5" id="sign_in_div">
              <div class="text-center">
                <h1 class="sec-title">Welcome back!</h1>
              </div>
              <form class="user" id="loginForm">
                <div class="form-group">
                  <input type="email" class="form-control form-control-user validate" autocomplete="off" name="email" id="email" data-validate-msg="Email field is required"  placeholder="Enter Email Address">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-user validate" autocomplete="off" id="password" name="password" data-validate-msg="Password field is required"  placeholder="Password">
                </div>
                <div class="custom-checkbox mb-3">
                  <input type="checkbox" class="custom-input checkAll" id="remember" name="remember" checked>
                  <label class="custom-label" for="remember">Remember me</label>
                </div>
                <button class="btn btn-primary btn-user btn-block loginButton" type="button">Login</button>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" id="forget_ps" href="javascript:void(0)">Forgot Password?</a>
              </div>
            </div>
            <div class="p-5" id="forgot_ps_div" style="display: none;">
              <div class="text-center">
                <h1 class="sec-title">We will sent an OTP to your email account!</h1>
              </div>
              <form class="user" id="forgotForm">
                <div class="form-group">
                  <input type="email" class="form-control form-control-user validate_fp" name="email" data-validate-msg="Email field is required"  autocomplete="off" placeholder="Enter Email Address">
                </div>
                <button class="btn btn-primary btn-user btn-block forgotButton" type="button">Send</button>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" id="sign_in" href="javascript:void(0)">Sign In</a>
              </div>
            </div>
            <div class="p-5" id="otp_div" style="display: none;">
              <div class="text-center">
                <h1 class="sec-title">Enter the OTP here!</h1>
              </div>
              <form class="user" id="otpForm">
                <div class="form-group">
                  <input type="hidden" name="user_id" value="0" id="otp_user_id">
                  <input type="password" class="form-control form-control-user validate_otp" name="otp" data-validate-msg="OTP field is required" autocomplete="off"  placeholder="Enter The OTP Here">
                </div>
                <div class="d-flex justify-content-center">
									<button class="btn btn-primary btn-user btn-block otpButton m-0 mr-1" type="button">Submit</button>
									<button class="btn btn-primary btn-user btn-block m-0 ml-1" id="otpresendButton" type="button">Re-Send</button>
								</div>
              </form>
              <hr>
            </div>
            <div class="p-5" id="password_div" style="display: none;">
              <div class="text-center">
                <h1 class="sec-title">Enter your new password!</h1>
              </div>
              <form class="user" id="passwordForm">
                <div class="form-group">
                  <input type="hidden" name="user_id" value="0" id="ps_user_id">
                  <input type="hidden" name="otp" value="0" id="user_otp">
                  <input type="password" class="form-control form-control-user validate_ps" autocomplete="off" name="new_password" data-validate-msg="password field is required"  placeholder="Enter Your New Password">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-user validate_ps" name="new_cpassword" data-validate-msg="Confirm password field is required"   autocomplete="off" placeholder="Enter Your New password Again">
                </div>
                <button class="btn btn-primary btn-user btn-block passwordButton" type="button">Change Password</button>
              </form>
              <hr>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
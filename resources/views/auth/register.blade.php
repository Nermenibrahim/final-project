
<!DOCTYPE html>
<html>

@include('includes.adminHead')

<body class="registeration-wrapper"
	style="background-image: linear-gradient(rgba(255, 255, 255, 0.735), rgba(0, 0, 0, 0.5))">

	<div class="container my-5 bg-white rounded-3">
		<div class="row">
			<div class="col-md-5 d-none d-md-block img-wrapper">
				<img src="{{asset('assets/admin/images/rear-view-young-college-student.jpg')}}" alt="">
			</div>
			<div class="col-md-7">
				<form method="POST" action="{{ route('register') }}" class="text-center h-100 px-3 d-flex flex-column justify-content-center">
                    @csrf
                    
					<h3 class="fw-semibold mb-5">REGISERTATION FORM</h3>
					<div class="form-group d-flex mb-3">
						<input type="text" placeholder="First Name" class="form-control me-2 @error('firstName') is-invalid @enderror" name="firstName" value="{{ old('firstName') }}" required autocomplete="firstName" autofocus>
                                @error('firstName')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

						<input type="text" placeholder="Last Name" class="form-control @error('lastName') is-invalid @enderror" name="lastName" value="{{ old('lastName') }}" required autocomplete="lastName"  >
                                @error('lastName')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
					</div>
					<div class="input-group mb-3">
						<input type="text" placeholder="Username" class="form-control  @error('userName') is-invalid @enderror" name="userName" value="{{ old('userName') }}" required autocomplete="userName" >
                                    @error('userName')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                     @enderror
						<img src="{{asset('assets/admin/images/user-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<div class="input-group  mb-3">
						<input type="email" placeholder="Email Address" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">
                                 @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                 @enderror

						<img src="{{asset('assets/admin/images/email-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<div class="input-group mb-3">
						<input type="password" placeholder="Password" class="form-control  @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">
                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                 @enderror
						<img src="{{asset('assets/admin/images/password-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<div class="input-group mb-5">
						<input type="password" placeholder="Confirm Password" class="form-control" name="password_confirmation" required autocomplete="new-password">
						<img src="{{asset('assets/admin/images/password-svgrepo-com.svg')}}" alt="" class="input-group-text">
					</div>
					<button class="btn btn-dark px-5 mb-2" type="submit">
						REGISTER
						<img src="{{asset('assets/admin/images/arrow-sm-right-svgrepo-com.svg')}}" alt="">
					</button>
					<a href="{{ route('login') }}" class="fw-semibold fs-6 text-decoration-none text-dark">Already have account?</a>

             
				</form>
			</div>
		</div>
	</div>

</body>

</html>

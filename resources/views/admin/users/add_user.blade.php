<!DOCTYPE html>
<html lang="en">

@include('includes.adminHead')

<body>
@include('includes.adminHeader')
  
  <div class="container my-5">
    <div class="mx-2">
      <h2 class="fw-bold fs-2 mb-5 pb-2">Add USER</h2>
      <form action="{{route('users.store')}}" method="POST" class="px-md-5">
        @csrf
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Name:</label>
          <div class="col-md-5">
            <input type="text" name="firstName" placeholder="First Name" class="form-control py-2" />

            @error('firstName')
                  <div class="alert alert-warning">{{$message}}</div>
               @enderror
          </div>
          <div class="col-md-5">
            <input type="text" name="lastName" placeholder="Last Name" class="form-control py-2" />

            @error('lastName')
                  <div class="alert alert-warning">{{$message}}</div>
               @enderror
          </div>

        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">UserName:</label>
          <div class="col-md-10">
            <input type="text" name="userName"  placeholder="e.g. Jhon33" class="form-control py-2" />

            @error('userName')
                  <div class="alert alert-warning">{{$message}}</div>
               @enderror
          </div>

        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Email:</label>
          <div class="col-md-10">
            <input type="email" name="email" placeholder="e.g. Jhon@example.com" class="form-control py-2" />

            @error('email')
                  <div class="alert alert-warning">{{$message}}</div>
               @enderror
          </div>

        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Password:</label>
          <div class="col-md-10">
            <input type="password" name="password" placeholder="Password" class="form-control py-2" />

            @error('password')
                  <div class="alert alert-warning">{{$message}}</div>
               @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Confirm Password:</label>
          <div class="col-md-10">
            <input type="password" id="password-confirm" placeholder="Confirm Password" name="password_confirmation"   class="form-control py-2"  />
          </div>
          <br>


        </div>
        <div class="text-md-end">
          <button class="btn mt-4 btn-secondary text-white fs-5 fw-bold border-0 py-2 px-md-5">
            Add User
          </button>
        </div>
      </form>
    </div>
  </div>
  </main>
 @include('includes.adminjsfiles')
</body>

</html>
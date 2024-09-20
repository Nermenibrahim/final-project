<!DOCTYPE html>
<html lang="en">

@include('includes.adminHead')

<body>
 @include('includes.adminHeader')

  <div class="container my-5">
    <div class="mx-2">
      <h2 class="fw-bold fs-2 mb-5 pb-2">Add Testimonial</h2>
      <form action="{{route('testimonials.store')}}" method="POST" class="px-md-5" enctype="multipart/form-data" >
      @csrf
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Name:</label>
          <div class="col-md-10">
            <input type="text" placeholder="e.g. Jhon Doe" class="form-control py-2" name="name" />
            @error('name')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Content:</label>
          <div class="col-md-10">
            <textarea name="content" id="" rows="5" class="form-control" ></textarea>
            @error('content')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Published:</label>
          <div class="col-md-10">
            <input type="checkbox" class="form-check-input" style="padding: 0.7rem;" name="published" />
            @error('published')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror

          </div>
        </div>
        <hr>
        <div class="form-group mb-3 row">
          <label for="image" class="form-label col-md-2 fw-bold text-md-end">Image:</label>
          <div class="col-md-10">
            <input type="file" class="form-control" style="padding: 0.7rem;" name="image"  id="image"/>
            @error('image')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
          </div>
        </div>
        <div class="text-md-end">
          <button type="submit" class="btn mt-4 btn-secondary text-white fs-5 fw-bold border-0 py-2 px-md-5">
            Add Testimonial
          </button>
        </div>
      </form>
    </div>
  </div>
  </main>
  @include('includes.adminJsfiles')
</body>

</html>
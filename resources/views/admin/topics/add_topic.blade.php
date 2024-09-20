<!DOCTYPE html>
<html lang="en">

@include('includes.adminHead')

<body>
@include('includes.adminHeader')
  <div class="container my-5">
    <div class="mx-2">
      <h2 class="fw-bold fs-2 mb-5 pb-2">Add Topic</h2>
      <form action="{{route('topics.store')}}" method="POST" class="px-md-5" enctype="multipart/form-data" >
        @csrf
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">topic Title:</label>
          <div class="col-md-10">
            <input type="text" placeholder="e.g. Design Patterns" class="form-control py-2" name="topicTitle" />


            @error('topicTitle')

            <div class="alert alert-warning">{{$message}}</div>

            @enderror


          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Category:</label>
          <div class="col-md-10">
            <select name="category_id" id="" class="form-control py-1">
            @foreach($categories as $category)

              <option value="{{$category->id}}"  @selected(old('category_id', $category->category_id) == $category->id) > {{$category->categoryName}} </option>

            @endforeach
            </select>
          </div>
        </div>
        @error('category_id')
            <div class="alert alert-warning">{{$message}}</div>
            @enderror
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Content:</label>
          <div class="col-md-10">
            <textarea name="content" id="" rows="5" class="form-control"></textarea>
            @error('content')

                <div class="alert alert-warning">{{$message}}</div>

            @enderror
          </div>
        </div>
        <div class="form-group mb-3 row">
          <label for="" class="form-label col-md-2 fw-bold text-md-end">Trending:</label>
          <div class="col-md-10">
            <input type="checkbox" class="form-check-input" style="padding: 0.7rem;" name="trending" />

            @error('trending')

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
            <input type="file" class="form-control" style="padding: 0.7rem;" id="image" name="image"/>
            @error('image')

                <div class="alert alert-warning">{{$message}}</div>

            @enderror

            
          </div>
        </div>
        <div class="text-md-end">
          <button class="btn mt-4 btn-secondary text-white fs-5 fw-bold border-0 py-2 px-md-5">
            Add Topic
          </button>
        </div>
      </form>
    </div>
  </div>
  </main>
  @include('includes.adminJsfiles')
</body>

</html>




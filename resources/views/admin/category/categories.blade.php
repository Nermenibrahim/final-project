<!DOCTYPE html>
<html lang="en">

@include('includes.adminHead')

<body>
@include('includes.adminHeader')
    <div class="container my-5">
        <div class="mx-2">
            <div class="row justify-content-between mb-2 pb-2">
                <h2 class="fw-bold fs-2 col-auto">All Categories</h2>
                <a href="{{route('categories.create')}}" class="btn btn-link  link-dark fw-semibold col-auto me-3">➕Add new category</a>
            </div>
            <div class="table-responsive">
                <table class="table table-hover display" id="_table">
                    <thead>
                        <tr>
                            <th scope="col">Created At</th>
                            <th scope="col">Category</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($categories as $category)
                        <tr>
                            <th scope="row">{{ date('d M Y') }}</th>
                            <td>{{$category['categoryName']}}</td>
                            <td class="text-center"><a class="text-decoration-none text-dark" href="{{route('categories.edit',$category['id'])}}"><img src="{{asset('assets/admin/images/edit-svgrepo-com.svg')}}"></a></td>
                            <td class="text-center"><a class="text-decoration-none text-dark" href="{{route('categories.destroy',$category['id'])}}"><img src="{{asset('assets/admin/images/trash-can-svgrepo-com.svg')}}" onclick="confirm('Are you sure you want to delete?')" ></a></td>

                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    @include('includes.adminJsfiles')
</body>

</html>
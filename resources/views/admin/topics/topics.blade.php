<!DOCTYPE html>
<html lang="en">

@include('includes.adminHead')

<body>
@include('includes.adminHeader')
    <div class="container my-5">
        <div class="mx-2">
            <div class="row justify-content-between mb-2 pb-2">
                <h2 class="fw-bold fs-2 col-auto">All Topics</h2>
                <a href="{{route('topics.create')}}" class="btn btn-link  link-dark fw-semibold col-auto me-3">➕Add new topic</a>
            </div>
            <div class="table-responsive">
                <table class="table table-hover display" id="_table">
                    <thead>
                        <tr>
                            <th scope="col">Created At</th>
                            <th scope="col">Title</th>
                            <th scope="col">Category</th>
                            <th scope="col">Content</th>
                            <th scope="col">No. of views</th>
                            <th scope="col">Published</th>
                            <th scope="col">Trending</th>
                            <th scope="col">Edit</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($topics as $topic)
                        <tr>
                            <th scope="row">{{ date('d M Y') }}</th>
                            <td><a class="text-decoration-none text-dark" href="{{route('topicDetail',$topic['id'])}}">{{$topic['topicTitle']}}</a>
                            </td>

                            <td>{{$topic->category->categoryName}}</td>
                            <td>{{Str::limit($topic['content'], 20 , ' (...)')}}</td>
                            <td>12</td>
                            <td>{{$topic['published']==1 ? "Yes":"No"}}</td>
                            <td>{{$topic['trending']==1 ? "Yes":"No"}}</td>
                            <td class="text-center"><a class="text-decoration-none text-dark" href="{{route('topics.edit', $topic['id'])}}"><img src="{{asset('assets/admin/images/edit-svgrepo-com.svg')}}"></a></td>
                            <td class="text-center"><a class="text-decoration-none text-dark" href="{{route('topics.destroy', $topic['id'])}}"><img src="{{asset('assets/admin/images/trash-can-svgrepo-com.svg')}}"onclick="confirm('Are you sure you want to delete?')" ></a></td>
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
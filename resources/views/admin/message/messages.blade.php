<!DOCTYPE html>
<html lang="en">

@include('includes.adminHead')

<body>
    @include('includes.adminHeader')
       
    <div class="container my-5">
        <div class="mx-2">
            <div class="row justify-content-between mb-2 pb-2">
                <h2 class="fw-bold fs-2 col-auto">Unread Messages</h2>
            </div>
            <div class="table-responsive">
                <table class="table table-hover table-borderless display" id="_table">
                    <thead>
                        <tr>
                            <th scope="col">Created At</th>
                            <th scope="col">Message</th>
                            <th scope="col">Sender</th>
                            <th scope="col">Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                      @foreach($messages as $message)
                        <tr>
                            <th scope="row">{{ date('d M Y') }}</th>
                            <td><a href="{{route('messages.show' , $message['id'])}}" class="text-decoration-none text-dark">{{$message['message']}}</a></td>
                            <td>{{$message['name']}}</td>
                            <td class="text-center"><a class="text-decoration-none text-dark" href="{{route('messages.destroy' , $message['id'])}}"><img src="{{asset('assets/admin/images/trash-can-svgrepo-com.svg')}}"  onclick="confirm('Are you sure you want to delete?')"></a></td>
                        </tr>
                      @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        <hr>
        
    </div>
   @include('includes.adminJsfiles')
</body>

</html>
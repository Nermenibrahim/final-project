<!doctype html>
<html lang="en">
 
@include('includes.head')
    
    <body class="topics-listing-page" id="top">

        <main>

     @include('includes.pages_nav')
     @include('includes.pagesHeader')

        
     @yield('content')
             
        </main>

        @include('includes.footer')

        @include('includes.js_files')

    </body>
</html>
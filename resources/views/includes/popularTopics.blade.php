     <section class="section-padding">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-12 col-12 text-center">
                            <h3 class="mb-4">Popular Topics</h3>
                        </div>
                        @if($tests->count() > 0)
                        @foreach($tests as $test)
                        <div class="col-lg-8 col-12 mt-3 mx-auto">
                     
                            <div class="custom-block custom-block-topics-listing bg-white shadow-lg mb-5">
                                <div class="d-flex">
                                    <img src="{{asset('assets/images/topics/' .$test['image'])}}" class="custom-block-image img-fluid" alt="">
                               
                                    <div class="custom-block-topics-listing-info d-flex">
                                        <div>
                                            <h5 class="mb-2">{{$test['topicTitle']}}</h5>

                                            <p class="mb-0">{{$test['content']}}</p>

                                            <a href="{{route('topics.show',$test['id'])}}" class="btn custom-btn mt-3 mt-lg-4">Learn More</a>
                                        </div>

                                        <span class="badge bg-design rounded-pill ms-auto">14</span>
                                    </div>
                                
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @endif

                        <div class="col-lg-12 col-12 pagination justify-content-center mb-0">    
                                   {{ $tests->links() }}
                
                        </div>

                    </div>
                </div>
            </section>
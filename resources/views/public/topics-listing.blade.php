@push('pageHeader')

Topics Listing

@endpush

@extends('layouts.main')

@section('content')

@include('includes.popularTopics')

@include('includes.trendingTopics')

@endsection
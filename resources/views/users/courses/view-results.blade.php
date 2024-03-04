@extends('users.user_design')
@section('content')
<div class="dashboard-content-wrap">
        <div class="dashboard-menu-toggler btn theme-btn theme-btn-sm lh-28 theme-btn-transparent mb-4 ml-3">
            <i class="la la-bars mr-1"></i> Dashboard Nav
        </div>
        <div class="container-fluid">
            
            <div class="table-responsive">
                <h3 class="fs-18 font-weight-semi-bold pb-4">Results</h3>
                <table class="table generic-table">
                    <thead>
                    <tr>
                        <th scope="col">Title</th>
                        <th scope="col">Type</th>
                        <th scope="col">Completed On</th>
                        <th scope="col">Result</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">
                            <ul class="generic-list-item">
                                <li>Introduction Web Design with HTML</li>
                            </ul>
                        </th>
                        <td>
                            <ul class="generic-list-item">
                                <li>Online</li>
                            </ul>
                        </td>
                        <td>
                            <ul class="generic-list-item">
                                <li>July 12, 2019</li>
                            </ul>
                        </td>
                        <td>
                            <ul class="generic-list-item">
                                <li>View</li>
                            </ul>
                        </td>
                        
                    </tr>
                    </tbody>
                </table>
            </div>
            
        </div><!-- end container-fluid -->
    </div>

@endsection
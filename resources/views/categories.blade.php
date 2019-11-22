@extends('layouts.index')

@section('content')
 @push('style')
    <link rel="stylesheet" href="css/style.css">
    @endpush

<div class="container" style="padding-top: 50px">
    <div class="row">
        <!--sol menu-->
        <div class="col col-3">
            <aside class="sidebar">
                <nav class="sidebar-nav">
                    <ul class="metismenu" id="menu" style="display:none;">
                        <li class="active">
                            <a href="?" aria-expanded="true">
                                <span class="sidebar-nav-item-icon fa fa-bars fa-lg"></span>
                                <span class="sidebar-nav-item">Tüm Kategoriler</span>
                                <span class="fa arrow"></span>
                            </a>
                            <ul aria-expanded="true">
                                <li>
                                    <a href="https://github.com/onokumus/metisMenu">
                                        <span class="sidebar-nav-item-icon fa fa-code-fork"></span>
                                        Fork
                                    </a>
                                </li>
                                <li>
                                    <a href="https://github.com/onokumus/metisMenu">
                                        <span class="sidebar-nav-item-icon fa fa-star"></span>
                                        Star
                                    </a>
                                </li>
                                <li>
                                    <a href="https://github.com/onokumus/metisMenu/issues">
                                        <span class="sidebar-nav-item-icon fa fa-exclamation-triangle"></span>
                                        Issues
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="?" aria-expanded="false">Menu 0 <span class="fa arrow"></span></a>
                            <ul aria-expanded="false">
                                <li><a href="?">item 0.1</a></li>
                                <li><a href="?">item 0.2</a></li>
                                <li><a href="http://onokumus.com">onokumus</a></li>
                                <li><a href="?">item 0.4</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="?" aria-expanded="false">Menu 1 <span class="glyphicon arrow"></span></a>
                            <ul aria-expanded="false">
                                <li><a href="?">item 1.1</a></li>
                                <li><a href="?">item 1.2</a></li>
                                <li>
                                    <a href="?" aria-expanded="false">Menu 1.3 <span class="fa plus-times"></span></a>
                                    <ul aria-expanded="false">
                                        <li><a href="?">item 1.3.1</a></li>
                                        <li><a href="?">item 1.3.2</a></li>
                                        <li><a href="?">item 1.3.3</a></li>
                                        <li><a href="?">item 1.3.4</a></li>
                                    </ul>
                                </li>
                                <li><a href="?">item 1.4</a></li>
                                <li>
                                    <a href="?" aria-expanded="false">Menu 1.5 <span class="fa plus-minus"></span></a>
                                    <ul aria-expanded="false">
                                        <li><a href="?">item 1.5.1</a></li>
                                        <li><a href="?">item 1.5.2</a></li>
                                        <li><a href="?">item 1.5.3</a></li>
                                        <li><a href="?">item 1.5.4</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="?" aria-expanded="false">Menu 2 <span class="glyphicon arrow"></span></a>
                            <ul aria-expanded="false">
                                <li><a href="?">item 2.1</a></li>
                                <li><a href="?">item 2.2</a></li>
                                <li><a href="?">item 2.3</a></li>
                                <li><a href="?">item 2.4</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </aside>
        </div>

<!--Urunler Kısmı-->
        <div class="col col-9">
            <div class="row">
                    <div class="card rem12-5 m-1">
                        <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">açıklama</p>
                            <a href="#" class="btn btn-primary">Sipariş Ver</a>
                        </div>
                    </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>
                <div class="card rem12-5 m-1">
                    <img class="card-img-top" src="https://via.placeholder.com/500" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">açıklama</p>
                        <a href="#" class="btn btn-primary">Sipariş Ver</a>
                    </div>
                </div>





            </div>
        </div>

    </div>
</div>
</div>
@endsection
@push('scripts')
    <script src="js/metisMenu.min.js"></script>
    <script src="js/script.js"></script>
@endpush


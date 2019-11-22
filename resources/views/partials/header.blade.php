<nav class="navbar navbar-dark navbar-expand-lg fixed-top bg-white portfolio-navbar gradient">
        <div class="container"><button data-toggle="collapse" class="navbar-toggler" data-target="#navbarNav"><span class="sr-only">Toggle navigation</span></button>
            <div class="collapse navbar-collapse" id="navbarNav"><a href="#">{{setting('katalog.katalog_baslik')}}</a>
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="mailto:{{setting('iletisim.mail')}}">{{setting('iletisim.mail')}}<i class="icon ion-android-mail"></i></a></li>
                    <li class="nav-item" role="presentation"></li>
                </ul>
            </div>
        </div>
    </nav>
    <main id="navbarNav" class="page lanidng-page">
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-search fixed-top">
            <div class="container"><a class="navbar-brand" href="#">MarjPromosyon</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">menu</span><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse"
                    id="navcol-1">
                    <ul class="nav navbar-nav">
                        <li class="nav-item" role="presentation"><a class="nav-link active" href="#">Link 1</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#">Link 2</a></li>
                        <li class="nav-item" role="presentation"><a class="nav-link" href="#">Link 3</a></li>
                    </ul>
                    <form class="form-inline mr-auto" target="_self">
                        <div class="form-group"><label for="search-field"><i class="fa fa-search"></i></label></div>
                    </form>
                    <a class="d-lg-flex align-items-lg-center" target="_blank" href="https://api.whatsapp.com/send?phone=9{{setting('iletisim.whatsapp_tel')}}&text=hie&lang=tr"><i class="fa fa-whatsapp" data-bs-parallax-bg="true"></i>&nbsp;{{setting('iletisim.whatsapp_tel')}}</a>
                    <a class="d-lg-flex align-items-lg-center" href="tel:+9{{setting('iletisim.tel1')}}"><i class="fa fa-phone"></i>&nbsp;{{setting('iletisim.tel1')}}</a>
                    <a class="d-lg-flex align-items-lg-center" href="tel:+9{{setting('iletisim.tel2')}}"><i class="fa fa-phone"></i>&nbsp;{{setting('iletisim.tel2')}}</a></div>
            </div>
        </nav>
    </main>





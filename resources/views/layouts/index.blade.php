    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
        <title>{{setting('site.title')}}</title>
@include('.partials.style')
    </head>

    <body>
@include('partials.header')

    @yield('slider')

    @yield('content')

    <div class="footer-clean">
@include('partials.footer')
    </div>

@include('partials.script')
    </body>

    </html>
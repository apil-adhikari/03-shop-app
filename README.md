# shop_app

Color Theme Snippet:
`colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)`

### Using Custom Fonts:
1. Use `google_fonts` package from pub.dev which allows us to use any font availiable in `fonts.google.com`. 

    - PROS: It can reduce the size of app during production, because we don't have to install the fonts in the system.(this fetche the font for us from google)
    - CONS: Uses `http` fetching, it takes little bit of time to load.

2. Regestring the font in `pubspec.yaml`

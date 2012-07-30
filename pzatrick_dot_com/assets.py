from webassets import Bundle

def includeme(config):
    sass = Bundle(
        'assets/sass/*.sass'
        , filters='compass'
        , debug=False
        , output='generated/sass.css'
    )

    config.add_webasset('sass', sass)

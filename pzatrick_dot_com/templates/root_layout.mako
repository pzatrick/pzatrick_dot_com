<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>Pzatrick's Pad</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    % for url in webassets(request, 'hiero:static/assets/css/bootstrap.css', 'hiero:static/assets/css/bootstrap-responsive.css', 'sass'):
      <link href='${url}' rel='stylesheet'/>
    % endfor

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    ${next.body()}
  </body>
</html>

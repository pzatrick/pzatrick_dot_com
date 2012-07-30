<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8"/>
    <title>Pzatrick's Lair</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <!-- Le styles -->
    <link href="${request.static_url('hiero:static/assets/css/bootstrap.css')}" rel="stylesheet"/>
    <link href="${request.static_url('hiero:static/assets/css/bootstrap-responsive.css')}" rel="stylesheet"/>
    <link href="${request.static_url('pzatrick_dot_com:static/css/temp.css')}" rel="stylesheet"/>

    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  </head>
  <body>
    <div>
      <div class="container-fluid">
        <div class="row-fluid header-row">
          <div class="span1">
            &nbsp;
            <!-- this div keeps the content centered -->
          </div>
          <div class="span7">
            <h3 id="site-title">Pzatrick's Web Log</h3>
          </div>
        </div>
        <div class="row-fluid">
          <div class="span1">
            &nbsp;
            <!-- this div keeps the content centered -->
          </div>
          <div class="span7">
            ${next.body()}
          </div>
          <div class="span2">
            &nbsp;
          </div>
          <div class="span2 sidebar-column">
            <h3>Categories</h3>
            <ul>
              % for category in categories:
              <li><a href="${request.route_url('hiero_entry_category', slug=category.slug)}">${category.title}</a></li>
              % endfor
            </ul>
            <h3>Series</h3>
            <ul>
              % for series_ in series:
              <li><a href="${request.route_url('hiero_entry_series', slug=series_.slug)}">${series_.title}</a></li>
              % endfor
            </ul>
          </div>
        </div> <!-- /container -->
      </div>
    </div>
  </body>
</html>

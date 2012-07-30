<%inherit file="pzatrick_dot_com:templates/root_layout.mako"/>
<div>
  <div class="container-fluid">
    <div class="row-fluid header-row">
      <div class="span1">
        &nbsp;
        <!-- this div keeps the content centered -->
      </div>
      <div class="span7">
        <h3 id="site-title"><a href='/'>Pzatrick's</a> > Web Log</h3>
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
        <h3>Recent Posts</h3>
        <ul>
          % for recent in recent_entries:
          <li><a href="${request.route_url('hiero_entry_detail', slug=recent.slug)}">${recent.title}</a></li>
          % endfor
        </ul>
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

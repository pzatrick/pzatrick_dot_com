<%inherit file="pzatrick_dot_com:templates/root_layout.mako" />
<%namespace module="random" import="randint"/>
<div class="tile-container">
  % for row in grid:
    <% (c, tc, bc) = (None, None, None) %>
    <div class="tile-row">
    % for (brc, rc, trc) in list(row):
      % if c != None:
        % if c == '0':
            <div class="tile-span1 tile-stone"></div>
        % elif c == 'O':
            <div class="tile-span1 tile-stone2"></div>
        % elif c == '`' and lc == '`' and tc == '`' and tlc == ' ':
            <div class="tile-span1 tile-grass3tlu"></div>
        % elif c == '`' and lc == ' ' and tc == ' ':
            <div class="tile-span1 tile-grass3tl"></div>
        % elif c == '`' and rc == '`' and bc == '`' and brc == ' ':
            <div class="tile-span1 tile-grass3bru"></div>
        % elif c == '`' and rc == ' ' and bc == ' ':
            <div class="tile-span1 tile-grass3br"></div>
        % elif c == '`' and rc == '`' and tc == '`' and trc == ' ':
            <div class="tile-span1 tile-grass3tru"></div>
        % elif c == '`' and rc == ' ' and tc == ' ':
            <div class="tile-span1 tile-grass3tr"></div>
        % elif c == '`' and lc == '`' and bc == '`' and brc == ' ':
            <div class="tile-span1 tile-grass3blu"></div>
        % elif c == '`' and lc == ' ' and bc == ' ':
            <div class="tile-span1 tile-grass3bl"></div>
        % elif c == '`' and tc == ' ':
          <div class="tile-span1 tile-grass3t"></div>
        % elif c == '`' and lc == ' ':
          <div class="tile-span1 tile-grass3l"></div>
        % elif c == '`' and bc == ' ':
          <div class="tile-span1 tile-grass3b"></div>
        % elif c == '`' and rc == ' ':
          <div class="tile-span1 tile-grass3r"></div>
        % elif c == '`':
            <div class="tile-span1 tile-grass"></div>
        % elif c == "'":
          <div class="tile-span1 tile-grass2"></div>
        % elif c == " ":
          <div class="tile-span1 tile-empty"></div>
        % endif
      % endif
      <% lc = c %>
      <% tlc = tc %>
      <% blc = bc %>
      <% c = rc %>
      <% tc = trc %>
      <% bc = brc %>
    % endfor
    </div>
  % endfor
</div>
        
    

  <!-- <img src="${request.static_url('pzatrick_dot_com:static/img/linkedin.png')}"/> -->
  <!-- <div class="tile-row"> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> -->
  <!--   <div class="tile-span2 tile-sky"></div> -->
  <!--   <div class="tile-span3 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span3 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span5 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> --> 
  <!-- </div> -->
  <!-- <div class="tile-row"> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> -->
  <!--   <div class="tile-span2 tile-sky"></div> -->
  <!--   <div class="tile-span3 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span3 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span5 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> --> 
  <!-- </div> -->
  <!-- <div class="tile-row"> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> -->
  <!--   <div class="tile-span2 tile-sky"></div> -->
  <!--   <div class="tile-span3 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span3 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span5 tile-gray-building"></div> -->
  <!--   <div class="tile-span1 tile-sky"></div> -->
  <!--   <div class="tile-span2 tile-gray-building"></div> --> 


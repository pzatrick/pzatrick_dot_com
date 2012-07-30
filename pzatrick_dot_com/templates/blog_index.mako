<%inherit file="pzatrick_dot_com:templates/blog_layout.mako"/>

<%namespace name="blog" file="pzatrick_dot_com:templates/lib/blog.mako"/>

% for entry in entries:
${blog.render_entry(entry)}
% endfor

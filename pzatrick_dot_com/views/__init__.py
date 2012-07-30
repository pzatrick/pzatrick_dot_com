import os
from pyramid.response import FileResponse
from pkg_resources      import resource_filename
from pyramid.view import view_config
from pyramid.httpexceptions import HTTPFound

from hiero.views import BaseController
from hem.db import get_session

def favicon_view(request):
    fname = resource_filename(__name__, '../static/favicon.ico')
    return FileResponse(fname, request=request)


@view_config(
        route_name="index"
        , renderer="pzatrick_dot_com:templates/index.mako"
        )
def index(request):
    return {}


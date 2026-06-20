from django.conf import settings
from django.http import HttpResponse


def vue_home(request):
    """Serve the latest Vite build entry without Django template caching."""
    index_path = settings.BASE_DIR / 'static' / 'vue' / 'index.html'
    return HttpResponse(index_path.read_text(encoding='utf-8'), content_type='text/html; charset=utf-8')

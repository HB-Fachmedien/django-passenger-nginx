"""
https://github.com/ariq01/django-passenger-nginx/

Ariq Naufal
"""


import os
import sys
sys.path.insert(0,'/var/www/riqnaufal.com/personalproject/')

from django.core.wsgi import get_wsgi_application

os.environ["DJANGO_SETTINGS_MODULE"] = "personalproject.settings"

application = get_wsgi_application()
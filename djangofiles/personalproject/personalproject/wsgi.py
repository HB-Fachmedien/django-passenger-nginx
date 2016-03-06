"""
WSGI config for personalproject project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.8/howto/deployment/wsgi/
"""

import os
import sys
sys.path.insert(0,'/var/www/riqnaufal.com/personalproject/')

from django.core.wsgi import get_wsgi_application

os.environ["DJANGO_SETTINGS_MODULE"] = "personalproject.settings"

application = get_wsgi_application()

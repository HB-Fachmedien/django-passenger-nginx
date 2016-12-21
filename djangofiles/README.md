#Django Configuration

- Create main project of your django with # django-admin startproject personalproject
- Make it readable and writeable! with # chmod -R 755 personalproject/
- Create passenger_wsgi.py : ([example passenger_wsgi.py](https://github.com/ariq01/django-passenger-nginx/blob/master/djangofiles/personalproject/passenger_wsgi.py))
- Check your static and media configuration on ([settings.py](https://github.com/ariq01/django-passenger-nginx/blob/master/djangofiles/personalproject/personalproject/settings.py#L102-L116))
- Check your wsgi.py configuration, and change like mine ([wsgi.py](https://github.com/ariq01/django-passenger-nginx/blob/master/djangofiles/personalproject/personalproject/wsgi.py))
- Collect the admin files (static) with # python manage.py collectstatic
- Don't forget to create directory static # mkdir static

- own it all files with # chown -R yourusername:www-data * 
  or # chown -R www-data:www-data



- if you install new app on your django, you must # python manage.py collectstatic 
  to get static files of your new app

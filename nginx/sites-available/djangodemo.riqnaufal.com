server {
	listen 80;
	server_name djangodemo.riqnaufal.com;
   	
	root /home/djangodemo.riqnaufal.com/django/personalproject;
	passenger_enabled on;

	passenger_app_root /home/djangodemo.riqnaufal.com/django/personalproject; 
	passenger_group www-data;
	passenger_user yourusername; #make sure you have http://www.cyberciti.biz/faq/ubuntu-add-user-to-group-www-data/
	
	#don't foget to create passenger_wsgi.py on where root files located
	passenger_app_type wsgi;
	passenger_startup_file passenger_wsgi.py;

	#tell passenger, where the /static located
	location /static {
		alias /home/djangodemo.riqnaufal.com/django/personalproject/static;
		passenger_document_root /home/djangodemo.riqnaufal.com/django/personalproject/static;
	}

	#tell passenger, where the /media located
	location /media {
		alias /home/djangodemo.riqnaufal.com/django/personalproject/media;
		passenger_document_root /home/djangodemo.riqnaufal.com/django/personalproject/media;
	}
	
	location ~* .(jpg|jpeg|png|gif|ico|css|js)$ {
	expires 365d;
	}
}

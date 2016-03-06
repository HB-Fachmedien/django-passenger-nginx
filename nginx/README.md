# Make sure you have finished this steps, before deploy django with passenger and nginx.

# Step - step :

- Install Nginx with Passenger as usual  : 
([https://www.phusionpassenger.com/library/walkthroughs/basics/python/installation.html](https://www.phusionpassenger.com/library/walkthroughs/basics/python/installation.html))
- After installation completed, you may create virtualhost of your domain, example : ([url](https://www.url.com))
- # ln -s /etc/nginx/sites-available/yourvirtualhost.com /etc/nginx/sites-enabled/yourvirtualhost.com
- # service nginx reload
- # service nginx restart

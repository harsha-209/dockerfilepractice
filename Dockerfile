#Base Image
#FROM alpine-php7
FROM nginx:latest
# Label Details will be updated below
	LABEL Maintainer="Sai Krishna  <sai.k@minfytech.com>" \
    Description="This docker file will spinup container with Nginx 1.16 & PHP 7.4 based on Alpine Linux."
	  
# Install Required packages & tools

#	RUN yum -y install nginx 

#Copy Required Data from Host to container
	RUN mkdir -p /var/www/harshad
#	RUN cd "/var/www-harshad"
#	RUN mkdir html

	
	

	COPY . /var/www/harshad
	COPY ./harshad.conf /etc/nginx/conf.d
	COPY ./vamshi.conf /etc/nginx/conf.d

	#RUN cp -R /home/* /var/www-harshad/
	
	#RUN pwd
	
	#RUN cp -R /var/www-harshad/index.html  /var/www-harshad/html/
	
	#RUN cp /etc/nginx/nginx.conf /etc/nginx/nginx.conf.bkp
	
	#RUN cp -R /home/nginx.conf /etc/nginx/
	
	

#	RUN cp -R /home/env.php /var/www-web/application/config/production/
	
	#RUN cp -R /home/harshad.conf /etc/nginx/conf.d/
	
#	RUN cp -R /home/application.conf /etc/php7/php-fpm.d/


# Configure Environment Variables below

# Run the shell scripts if required

#Expose required ports etc
EXPOSE 80 8080 8082 443


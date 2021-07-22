FROM nginx:1.21.0

RUN groupadd -g 1000 app \
 && useradd -g 1000 -u 1000 -d /var/www -s /bin/bash app

RUN apt-get update && apt-get install --no-install-recommends -y \
        nano
RUN ln -fs /usr/share/zoneinfo/Europe/Minsk /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

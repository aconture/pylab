FROM python:3.9.5

RUN /usr/local/bin/python -m pip install --upgrade pip
RUN pip install \
    pandas \
    pywhat
RUN pip install sphinx==3.3.1 sphinx-autobuild recommonmark sphinx-markdown-tables==0.0.5 sphinx_rtd_theme 

RUN mkdir /apps && chmod +777 /apps
WORKDIR /apps
#EXPOSE 8000
#RUN sphinx-autobuild -b html --host 0.0.0.0 --port 8000 . _build/html
#RUN /usr/bin/tr -d '\r' < update_config.sh > update_config.sh
#CMD ["/bin/bash","./update_config.sh"]
#Ejecuto CMD con script python para evitar errores de 'CR+LF' en shell linux
CMD ["/usr/bin/python","/apps/init.py"]










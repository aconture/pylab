FROM python:3.9.5

RUN useradd -ms /bin/bash -u 1000 pylab

#necesario para mantener el docker corriendo:
RUN pip install sphinx==3.3.1 sphinx-autobuild 

USER pylab
RUN /usr/local/bin/python -m pip install --upgrade pip
COPY requirements.txt /usr/share/misc/requirements.txt
RUN pip install -r /usr/share/misc/requirements.txt

WORKDIR /apps
#Ejecuto CMD con script python para evitar errores de 'CR+LF' en shell linux
CMD ["/usr/bin/python","/apps/init.py"]










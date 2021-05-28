import os
os.system("""
            if [ "$(ps -e | grep sphinx-auto | wc -l)" -eq 0 ];then
	            echo -e "\nIniciando servicio .....\n "
	            sphinx-autobuild -b html --host 0.0.0.0 --port 8000 . _build/html
            fi
            """)
os.system('echo -e "\nIngrese en localhost:8000 para ver la documentacion actualizada. \nEl log de make html se encuentra en /docs.\n "')

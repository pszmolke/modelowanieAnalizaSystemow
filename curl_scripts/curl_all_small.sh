#!/bin/bash
#running all curls for small content
exec 1> >(logger -s -t $(basename $0)) 2>&1

bash /home/pszmolke/curl_scripts/curl_script.sh http://www.unibo.it/++theme++unibotheme.portale/img/unibo.png
bash /home/pszmolke/curl_scripts/curl_script.sh https://www.cuni.cz/newlayout/images/youtube.png
bash /home/pszmolke/curl_scripts/curl_script.sh http://www.sorbonne-university.com/fileadmin/_processed_/csm_icon-world_96084ed766.png
bash /home/pszmolke/curl_scripts/curl_script.sh https://www.ed.ac.uk/files/css/css_vp6D65P3gUvJWsCDM2vP3FKwOjo420GV-UvKPxOx0fQ.css
bash /home/pszmolke/curl_scripts/curl_script.sh http://cms.ku.dk/grafik/images/cookies_link_top_dk.png
bash /home/pszmolke/curl_scripts/curl_script.sh https://we.po.opole.pl/components/com_dpcalendar/libraries/dpcalendar/dpcalendar.css
exit 0

#!/bin/bash
#running all curls for small content
exec 1> >(logger -s -t $(basename $0)) 2>&1

bash /home/pszmolke/curl_scripts/curl_script.sh http://www.unibo.it/portal_javascripts/Sunburst%20Theme/resourcegareappalto-cachekey-fef01798bafda6b36e19ac024930c28e.js
bash /home/pszmolke/curl_scripts/curl_script.sh https://www.cuni.cz/UK-1-version1-afoto.jpg
bash /home/pszmolke/curl_scripts/curl_script.sh http://www.sorbonne-university.com/fileadmin/contribution/Exemples/PI_Header_doctoral_college.jpg
bash /home/pszmolke/curl_scripts/curl_script.sh https://www.ed.ac.uk/files/styles/panel_breakpoints_theme_uoe_tv_1x/public/thumbnails/image/travelling1.jpg?itok=y6V8QNcq
bash /home/pszmolke/curl_scripts/curl_script.sh http://nyheder.ku.dk/alle_nyheder/2017/10/motion-virker-ligesaa-godt-efter-overgangsalderen/kvinder_og_tr_ning_810x810.jpg/
bash /home/pszmolke/curl_scripts/curl_script.sh http://we.po.opole.pl/images/akt/2017_10_24_tydz_celno_skarbowy.png
exit 0

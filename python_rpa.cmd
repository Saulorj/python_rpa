REM Download python
curl -L "https://www.python.org/ftp/python/3.9.5/python-3.9.5-amd64.exe" --output C:\users\WDAGUtilityAccount\Downloads\python-3.9.5-amd64.exe

REM Install python
START /W C:\users\WDAGUtilityAccount\Downloads\python-3.9.5-amd64.exe /quiet InstallAllUsers=1 PrependPath=1

REM Install python packages
"C:\Program Files\Python39\Scripts\pip.exe" install pandas
"C:\Program Files\Python39\Scripts\pip.exe" install wheel
"C:\Program Files\Python39\Scripts\pip.exe" install RPA

REM Create a desktop link to README.TXT
copy "C:\users\WDAGUtilityAccount\Documents\rpa\README.lnk" "C:\users\WDAGUtilityAccount\Desktop\README.lnk" 

REM Copy Python RPA folder to Desktop\Instalar
mkdir "C:\users\WDAGUtilityAccount\Desktop\src"
copy "C:\users\WDAGUtilityAccount\Documents\rpa\src\*.*" "C:\users\WDAGUtilityAccount\Desktop\src\"

REM FINISH MESSAGEBOX
mshta vbscript:Execute("msgbox ""Instalacao PYTHON Concluida"":close")

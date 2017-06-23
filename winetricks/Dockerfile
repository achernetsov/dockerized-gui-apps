FROM achernetzov/wine

RUN sudo wget https://raw.githubusercontent.com/Winetricks/winetricks/master/src/winetricks \
&& sudo chmod +x winetricks \
&& sudo mv ./winetricks /usr/local/bin/winetricks

#init win32 prefix using
#WINEPREFIX="$HOME/prefix32" WINEARCH=win32 wine wineboot

#run winetricks for prefix:
#WINEPREFIX="$HOME/prefix32" WINEARCH=win32 winetricks --help

#run dome app:
# WINEPREFIX="$HOME/prefix32" WINEARCH=win32 wine app.exe



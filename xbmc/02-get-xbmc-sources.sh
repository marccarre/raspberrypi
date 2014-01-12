echo "** Get latest XBMC from GitHub **"
if [ -d "xbmc-rbp" ]; then
  cd xbmc-rbp
  git pull
else
  git clone --depth 1 git://github.com/xbmc/xbmc-rbp.git
  cd xbmc-rbp
fi
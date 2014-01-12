echo "** Configure xbmc-rbp tools **"

sed -i 's/USE_BUILDROOT=1/USE_BUILDROOT=0/' tools/rbp/setup-sdk.sh
sed -i 's/TOOLCHAIN=\/usr\/local\/bcm-gcc/TOOLCHAIN=\/usr/' tools/rbp/setup-sdk.sh
sudo sh tools/rbp/setup-sdk.sh
sed -i 's/cd $(SOURCE); $(CONFIGURE)/#cd $(SOURCE); $(CONFIGURE)/' tools/rbp/depends/xbmc/Makefile

echo "** Make xbmc-rbp tools **"
make -C tools/rbp/depends/xbmc/
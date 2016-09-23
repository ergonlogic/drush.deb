VERSION="8.1.3"

default: drush package

drush: clean
	@mkdir -p debian/usr/bin
	@curl -sSL "https://github.com/drush-ops/drush/releases/download/${VERSION}/drush.phar" -o debian/usr/bin/drush
	@chmod +x debian/usr/bin/drush

package:
	@rpl 8.x.x ${VERSION} debian/DEBIAN/control
	@fakeroot make finish

finish:
	@chown -R root:root debian
	@dpkg-deb --build debian .

clean:
	@rm -rf debian/usr
	@rm -f *.deb

.PHONY: default

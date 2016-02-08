Drush Debian Package
====================

Builds a [Debian](http://debian.org) package to install and run [Drush](http://www.drush.org).


Usage
-----

The first thing you must do is download Drush:
``` bash
 $ make drush
```

Now that Drush is available, we can build the package:
``` bash
 $ make package
```

This will create our Debian package, which we can now interact with:
``` bash
$ ls *.deb
drush_8.0.3_all.deb
$ sudo dpkg --install drush_8.0.3_all.deb
```

Development
-----------

When changing the target Drush version, make sure to update:
* Makefile
* debian/DEBIAN/control


About
-----
* Author: [Christopher Gervais](http://ergonlogic.com)
* Source: [composer.deb](http://github.com/ergonlogic/drush.deb)

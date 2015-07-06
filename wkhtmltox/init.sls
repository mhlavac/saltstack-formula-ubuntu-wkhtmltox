wkhtmltox-packages:
    pkg.installed:
        - sources:
            - wkhtmltox: salt://wkhtmltox/bin/wkhtmltox.deb

/usr/bin/wkhtmltopdf:
    file.symlink:
        - target: /usr/local/bin/wkhtmltopdf
	- require:
		- pkg: wkhtmltox-packages

/usr/bin/wkhtmltoimage:
    file.symlink:
        - target: /usr/local/bin/wkhtmltoimage
	- require:
		- pkg: wkhtmltox-packages


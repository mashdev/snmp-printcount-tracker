#! /bin/bash

# sub out with your db credentials
_db="[database]"
_db_user="[username]"
_db_password="[password]"


#example of what each printer entry looks like
#counter gets the print count data
#countstr gets the integer of pages pritned
#mysql inserts the printer name and page count to db
printnm="peo-admin-records"
counter=`snmpwalk -Os -c public -v 1 10.10.1.89 1.3.6.1.2.1.43.10.2.1.4.1.1`
countstr=${counter:35}
mysql -u $_db_user -p$_db_password $_db --execute="INSERT INTO peoria_printers (printer_name, page_count) VALUES ('$printnm', '$countstr')"

printnm="peo-admin-ceo"
counter=`snmpwalk -Os -c public -v 1 10.10.1.91 1.3.6.1.2.1.43.10.2.1.4.1.1`
countstr=${counter:35}
mysql -u $_db_user -p$_db_password $_db --execute="INSERT INTO peoria_printers (printer_name, page_count) VALUES ('$printnm', '$countstr')"


printnm="peo-admin-color"
counter=`snmpwalk -Os -c public -v 1 10.10.1.228 1.3.6.1.2.1.43.10.2.1.4.1.1`
countstr=${counter:35}
mysql -u $_db_user -p$_db_password $_db --execute="INSERT INTO peoria_printers (printer_name, page_count) VALUES ('$printnm', '$countstr')"


printnm="peo-admin-hcfa"
counter=`snmpwalk -Os -c public -v 1 10.10.1.94 1.3.6.1.2.1.43.10.2.1.4.1.1`
countstr=${counter:35}
mysql -u $_db_user -p$_db_password $_db --execute="INSERT INTO peoria_printers (printer_name, page_count) VALUES ('$printnm', '$countstr')"

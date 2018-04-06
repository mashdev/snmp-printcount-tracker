# snmp-printcount-tracker
Uploaded for historical purposes on past work projects. 
Created this project when asked by management to get print counts of each printer. 
Rather than manually go to each printer or navigate to the printer web server via IP, I developed this project. 

Since there was an Ubuntu server already in place snmpwalk was installed via apt-get to be able to query the printer. In the counter variable of the bash file named `printer-snmp.sh` the mib number used worked for the Canon and HP printers used. 

The sql file in the db-files directory has a master table where all the information is aggregated to, and the other table is the template table that is can be created for each printer. 


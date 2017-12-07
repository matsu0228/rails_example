#
# dump backup
#
mysqldump -u user -p password dbname | gzip > dbname.dump.gz

#
# restore
#
zcat dbname.dump.gz | mysql -u user -p password dbname 

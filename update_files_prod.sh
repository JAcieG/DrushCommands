echo "This will update the Images for Home, admin, admis, cas, cobe, coe, con, fnd, grad, gradadmis, iss, mahg, mba, and staf. So sit back and relax while I do my thing."
set -x
drush rsync @prod-admin:%files @loc-admin:%files 
drush rsync @prod-admis:%files @loc-admis:%files 
drush rsync @prod-cas:%files @loc-cas:%files 
drush rsync @prod-cobe:%files @loc-cobe:%files 
drush rsync @prod-coe:%files @loc-coe:%files 
drush rsync @prod-con:%files @loc-con:%files 
drush rsync @prod-fnd:%files @loc-fnd:%files 
drush rsync @prod-grad:%files @loc-grad:%files 
drush rsync @prod-gradadmis:%files @loc-gradadmis:%files 
drush rsync @prod-iss:%files @loc-iss:%files 
drush rsync @prod-mahg:%files @loc-mahg:%files 
drush rsync @prod-mba:%files @loc-mba:%files 
drush rsync @prod-staf:%files @loc-staf:%files 
set +x

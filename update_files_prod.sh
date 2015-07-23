echo "This will update the Images for Home, admin, admis, cas, cobe, coe, con, fnd, grad, gradadmis, iss, mahg, mba, and staf. So sit back and relax while I do my thing."
set -x
drush rsync @prod-admin:%files @loc-admin:%files --y
drush rsync @prod-admis:%files @loc-admis:%files --y
drush rsync @prod-cas:%files @loc-cas:%files --y
drush rsync @prod-cobe:%files @loc-cobe:%files --y
drush rsync @prod-coe:%files @loc-coe:%files --y
drush rsync @prod-con:%files @loc-con:%files --y
drush rsync @prod-fnd:%files @loc-fnd:%files --y
drush rsync @prod-grad:%files @loc-grad:%files --y
drush rsync @prod-gradadmis:%files @loc-gradadmis:%files --y
drush rsync @prod-iss:%files @loc-iss:%files --y
drush rsync @prod-mahg:%files @loc-mahg:%files --y
drush rsync @prod-mba:%files @loc-mba:%files --y
drush rsync @prod-staf:%files @loc-staf:%files --y
set +x

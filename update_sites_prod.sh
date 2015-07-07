echo "This will update the Databases for Home, admin, admis, cas, cobe, coe, con, fnd, grad, gradadmis, iss, mahg, mba, and staf. So sit back and relax while I do my thing."
set -x
drush sql-sync @prod-home @loc-home --no-cache --create-db --y
drush sql-sync @prod-admin @loc-admin --no-cache --create-db --y
drush sql-sync @prod-admis @loc-admis --no-cache --create-db --y
drush sql-sync @prod-cas @loc-cas --no-cache --create-db --y
drush sql-sync @prod-cobe @loc-cobe --no-cache --create-db --y
drush sql-sync @prod-coe @loc-coe --no-cache --create-db --y
drush sql-sync @prod-con @loc-con --no-cache --create-db --y
drush sql-sync @prod-fnd @loc-fnd --no-cache --create-db --y
drush sql-sync @prod-grad @loc-grad --no-cache --create-db --y
drush sql-sync @prod-gradadmis @loc-gradadmis --no-cache --create-db --y
drush sql-sync @prod-iss @loc-iss --no-cache --create-db --y
drush sql-sync @prod-mahg @loc-mahg --no-cache --create-db --y
drush sql-sync @prod-mba @loc-mba --no-cache --create-db --y
drush sql-sync @prod-staf @loc-staf --no-cache --create-db --y
drush @loc-home dis ashland_onthehub --y
set +x

echo "This will update the Databases for Home, admin, admis, cas, cobe, coe, con, fnd, grad, gradadmis, iss, mahg, mba, and staf. So sit back and relax while I do my thing."
set -x
drush sql-sync @stg-home @loc-home --no-cache --create-db --y
drush sql-sync @stg-admin @loc-admin --no-cache --create-db --y
drush sql-sync @stg-admis @loc-admis --no-cache --create-db --y
drush sql-sync @stg-cas @loc-cas --no-cache --create-db --y
drush sql-sync @stg-cobe @loc-cobe --no-cache --create-db --y
drush sql-sync @stg-coe @loc-coe --no-cache --create-db --y
drush sql-sync @stg-con @loc-con --no-cache --create-db --y
drush sql-sync @stg-fnd @loc-fnd --no-cache --create-db --y
drush sql-sync @stg-grad @loc-grad --no-cache --create-db --y
drush sql-sync @stg-gradadmis @loc-gradadmis --no-cache --create-db --y
drush sql-sync @stg-iss @loc-iss --no-cache --create-db --y
drush sql-sync @stg-mahg @loc-mahg --no-cache --create-db --y
drush sql-sync @stg-mba @loc-mba --no-cache --create-db --y
drush sql-sync @stg-staf @loc-staf --no-cache --create-db --y
drush @loc-home dis ashland_onthehub --y
set +x

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
drush @loc-home en views_ui --y
drush @loc-admin en views_ui --y
drush @loc-admis en views_ui --y
drush @loc-cas en views_ui --y
drush @loc-cobe en views_ui --y
drush @loc-coe en views_ui --y
drush @loc-con en views_ui --y
drush @loc-fnd en views_ui --y
drush @loc-grad en views_ui --y
drush @loc-gradadmis en views_ui --y
drush @loc-iss en views_ui --y
drush @loc-mahg en views_ui --y
drush @loc-mba en views_ui --y
drush @loc-staf en views_ui --y
drush @loc-home vset file_temporary_path /tmp
drush @loc-admin vset file_temporary_path /tmp
drush @loc-admis vset file_temporary_path /tmp
drush @loc-cas vset file_temporary_path /tmp
drush @loc-cobe vset file_temporary_path /tmp
drush @loc-coe vset file_temporary_path /tmp
drush @loc-con vset file_temporary_path /tmp
drush @loc-fnd vset file_temporary_path /tmp
drush @loc-grad vset file_temporary_path /tmp
drush @loc-gradadmis vset file_temporary_path /tmp
drush @loc-iss vset file_temporary_path /tmp
drush @loc-mahg vset file_temporary_path /tmp
drush @loc-mba vset file_temporary_path /tmp
drush @loc-staf vset file_temporary_path /tmp
set +x

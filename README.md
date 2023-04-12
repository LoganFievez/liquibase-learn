# Liquibase learning

1. ```bash
   liquibase init project \
     --project-dir=./ \
     --changelog-file=00-init-db.yml \
     --format=yml \
     --project-defaults-file=liquibase.properties \
     --url=jdbc:postgresql://localhost:5432/lfi \
     --username=lfi \
     --password=lfi
   ```
   create the liquibase project
1. `liquibase tag --tag=init`: create a tag init of the database
1. `liquibase update`: run the changelog
1. `liquibase generate-changelog --changelog-file=01-generated-edit-db.yml`: generate changelog and store it in the mentionned file
1. `liquibase rollback --tag=init`: rollback any update done by liquibase to the status of the mentionned tag

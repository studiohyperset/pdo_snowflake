# PHP PDO driver fro Snowflake - Confection Version

This is a replica from [Snowflake Offical PDO Driver](https://github.com/snowflakedb/pdo_snowflake) without the binaries. This is done to be used with Heroku which limits the environment size to 500MB. Removing the binaries should be enough to remain under this rule.

This repo is mainly used by [Confection Heroku PHP Buildpack](https://github.com/studiohyperset/heroku-buildpack-php) during runtime.


## Update process

1. Add the original repo as "upstream":
    `git remote add upstream https://github.com/snowflakedb/pdo_snowflake.git`
2. Fetch all branches of remote upstream
    `git fetch upstream`
3. Rewrite your master with latest tag version
    `git merge upstream/main`
4. Sync changes to retrieve the new data. Remove any binarie from repo.
5. Remove `.github` to avoid tests
6. Commit and push to main
# PHP PDO driver fro Snowflake - Confection Version

This is a replica from [Snowflake Offical PDO Driver](https://github.com/snowflakedb/pdo_snowflake) without the binaries. This is done to be used with Heroku which limits the environment size to 500MB. Removing the binaries should be enough to remain under this rule.

This repo is mainly used by [Confection Heroku PHP Buildpack](https://github.com/studiohyperset/heroku-buildpack-php) during runtime.


## Update process

1. Delete everything from this repo, except this file and .git folder
2. Download the new repo into this folder
3. Remove the folders with binaries `dist`, `libsnowflakeclient/deeps-build/darwin` and `libsnowflakeclient/deeps-build/win64` 
5. Remove `.github` to avoid tests
6. Commit and push to main

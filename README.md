# Restore S3 Data

Small image based on `amazon/aws-cli:2` used to restore a backup from a specific bucket.
This image supports multiple architecture with the tag `leen15/restore-se-data:multiarch`.
It searches for the last backup in a path and download it in a specific local folder.
The local folder has to be mounted if you want to use the extracted data in a volume.

Mandatory environment variables:

- `LOCAL_DIR` (ex. `/tmp`)
- `BUCKET` (ex. `s3://backups`)
- `S3_PATH` (ex. `environments/app1/database`)
- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`

Example:
```
# Download only:
docker run -v $(PWD)/.data:/tmp --env-file=.env leen15/restore-s3-data

# Download and extract backup:
docker run -v $(PWD)/.data:/tmp --env-file=.env leen15/restore-s3-data sh -c "/opt/restore.sh; cd /tmp; tar -xzvf backup || return 1; echo 'extract completed, proceed ...';"
```

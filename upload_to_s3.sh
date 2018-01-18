VERSION="$(/usr/libexec/PlistBuddy -c 'Print CFBundleShortVersionString' CircleCiTestFramework/CircleCiTestFramework-Info.plist)"

# Upload to S3
ZIP_FILE_PATH="CircleCiTestFramework"
ZIP_FILE_NAME="library.zip"
CONTENT_TYPE="application/zip"
BUCKET_NAME="connected-builds"

aws s3 cp "$ZIP_FILE_NAME/$ZIP_FILE_PATH" \
		s3://$BUCKET_NAME/$ZIP_FILE_NAME \
		--acl "public-read" \
		--content-type "$CONTENT_TYPE"
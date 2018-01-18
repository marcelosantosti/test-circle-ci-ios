OLD_VERSION="$(/usr/libexec/PlistBuddy -c 'Print CFBundleShortVersionString' CircleCiTestFramework/CircleCiTestFramework-Info.plist)"
IFS="." read MAJOR MINOR PATCH <<< "$OLD_VERSION"
PATCH=$((PATCH+1))
NEW_VERSION="${MAJOR}.${MINOR}.${PATCH}"

/usr/libexec/PlistBuddy -c "Set CFBundleShortVersionString $NEW_VERSION" CircleCiTestFramework/CircleCiTestFramework-Info.plist

VERSION="$(/usr/libexec/PlistBuddy -c 'Print CFBundleShortVersionString' CircleCiTestFramework/CircleCiTestFramework-Info.plist)"

echo ">>>> Bumping version from >[$VERSION]<"
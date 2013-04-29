cd $WERCKER_ROOT
if [ -e ".jshintignore" ] || [ -e ".jshintrc" ] ; then
  echo ".jshintrc or .jshintignore found"
else
  echo ".jshintrc or .jshintignore not found, stopping"
	exit 0
fi

jshint --jslint-reporter .

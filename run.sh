cd $WERCKER_ROOT
if [ "$WERCKER_JSHINT_OPTION_FORCERUN" = "true" ] ; then
        echo "forcerun is true"
else
	if [ -e ".jshintignore" ] || [ -e ".jshintrc" ] ; then
		echo ".jshintrc or .jshintignore found"
	else
		echo ".jshintrc or .jshintignore not found, skipping step"
		exit 0
	fi
fi
jshint --jslint-reporter .

function saveConst() {
	# Create config file weather no exist yet
	if [ ! -e $SRC/config.sh ]; then
		touch $SRC/config.sh
	fi
	# Update const
	if grep -q "export $1=" $SRC/config.sh; then
		sed -i "s/^export $1=.*/export $1=$2/" $SRC/config.sh
	# Add const
	else
		echo "export $1=$2" >>$SRC/config.sh
	fi
	# Export const now
	export $1=$2
}

function ga() {
	git gc
	git add .
	git commit -m "$1"
	git push
}

function yesOrNo() {
	while true; do
		read -p "$1" response
		case $response in
		[Yy]*)
			$2
			break
			;;
		[Nn]*)
			break
			;;
		*)
			echo 'please answer Y or N'
			;;
		esac
	done
}
echo 'run funs'

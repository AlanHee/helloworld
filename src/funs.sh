function saveExport() {
	# Create config file weather no exist yet
	touch $SRC/config.sh
	# Update export
	if grep -q "export $1=" $SRC/config.sh; then
		# Fixed error: ...unknown option to `s’
		sed -i "s|^export $1=.*|export $1=$2|g" $SRC/config.sh
	# Add export
	else
		echo "export $1=$2" >>$SRC/config.sh
	fi
}

function saveConst() {
	# Create config file weather no exist yet
	touch $SRC/config.sh
	# Update const
	if grep -q "$1=" $SRC/config.sh; then
		sed -i "s/^$1=.*/$1=$2/" $SRC/config.sh
	# Add const
	else
		echo "$1=$2" >>$SRC/config.sh
	fi
}

function saveSource() {
	# Create config file weather no exist yet
	touch $SRC/config.sh
	# Update
	if grep -q "source $1" $SRC/config.sh; then
		sed -i "s/^source $1.*/source $1/" $SRC/config.sh
	# Add
	else
		echo "source $1" >>$SRC/config.sh
	fi
	# source now
	source $1
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

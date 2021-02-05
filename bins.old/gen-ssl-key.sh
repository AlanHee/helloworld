while true; do
	read -p 'Enter your email:' gitEmail;
	if [ -n  $gitEmail ]; then
		ssh-keygen -t ed25519 -C $gitEmail;
		break;
	fi
done


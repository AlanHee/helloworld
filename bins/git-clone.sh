site=github.com/alanhee
read -p 'Enter your git hub remote address:' address;
if [ -n "$address" ]; then
    site=$address;
fi

for repos in $@
do
	git clone https://$site/$repos
done

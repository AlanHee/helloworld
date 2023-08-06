#!/bin/bash
cat<<EOF > $1
#!/bin/bash
# by Alan Hee
# email: alan.hee@outlook.com
EOF
chmod +x $1
vi $1

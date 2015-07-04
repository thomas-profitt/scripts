#!/bin/sh

echo "#!/bin/sh" > /tmp/testarg2 &&
printf %q "$1" >> /tmp/testarg2 &&
chmod +x /tmp/testarg2 &&
xfce4-terminal --hold -e /tmp/testarg2

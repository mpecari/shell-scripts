echo "Killing tomcat 9091..."

pid="$(ps aux | grep tomcat9091 | grep /usr/bin/java | awk '{print $2}')"

while [ "$pid" != '' ]
do

echo "Try kill $pid"

kill "$pid"

sleep 5

pid="$(ps aux | grep tomcat9091 | grep /usr/bin/java | awk '{print $2}')"

done

echo "Done!"

app=demo-1.0.0.jar
d0=$(dirname $0)
# java -jar $d0/$app >/dev/null 2>&1 &
java -jar $d0/$app >$d0/${app/%.jar/.log} 2>&1 &

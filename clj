#!/bin/bash 
CLOJURE_JAR=$HOME/clojure/clojure.jar
CONTRIB_JAR=$HOME/clojure-contrib/clojure-contrib.jar
CLASSPATH=$CLOJURE_JAR:$CONTRIB_JAR
if [ $# -eq 0 ] ; then
    CLASSPATH=$HOME/jline/jline.jar:$CLASSPATH
    java -cp $CLASSPATH jline.ConsoleRunner clojure.main -i "$HOME/.cljrc.clj" --repl
else
    TMPFILE=""
    while [ $# -gt 0 ] ; do
        case "$1" in
        -cp|-classpath)
            CLASSPATH=$CLASSPATH:$2
            shift
            ;;
        -e)
            TMPFILE="/tmp/$(basename $0).$$.tmp"
            /bin/echo $2 > $TMPFILE
            ARGS=$TMPFILE
            break
            ;;
        *)
            ARGS="$ARGS $1"
            ;;
        esac
        shift
    done
 
    java -cp $CLASSPATH clojure.main $ARGS
    if [ "$TMPFILE" != "" ] ; then
        rm $TMPFILE
    fi
fi



#!/bin/bash 
CLOJURE_JAR=$CLOJURE_HOME/clojure.jar
CONTRIB_JAR=$CLOJURE_HOME/clojure-contrib.jar
CLASSPATH=$CLOJURE_JAR:$CONTRIB_JAR
JLINE_JAR=$JLINE_HOME/jline.jar
if [ $# -eq 0 ] ; then
    CLASSPATH=$JLINE_JAR:$CLASSPATH
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



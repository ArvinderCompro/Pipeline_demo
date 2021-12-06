echo "Hello Arvinder!"

myCommand=$1

case $myCommand in
    "build" )
        echo "Hy you entered ***************** build ************ command" 
        sam.cmd build ;;
    "deploy" ) 
        echo "Hy you enterd ============ deploy ========== command" 
        sam.cmd deploy --guided ;;
    "check" ) 
        echo "Hy you enterd ============ Check ========== command" 
esac
echo "Hello Arvinder!"

myCommand=$1

temp=($(jq -r '.ENVIRONMENT' test.json))
message=($(jq -r '.MESSAGE' test.json))

echo "$temp" 
echo $message
echo "Hello Arvinder!!!!!!!!!!!!!!!!!"

case $myCommand in
    "build" )
        echo "Hy you entered ***************** build ************ command" 
        sam.cmd build ;;
    "deploy" ) 
        echo "Hy you enterd ============ deploy ========== command" 
        sam.cmd deploy --parameter-overrides ParameterKey=MSG,ParameterValue=$message ParameterKey=ENV,ParameterValue=$temp ;;
    "check" ) 
        echo "Hy you enterd ============ Check ========== command" 
esac
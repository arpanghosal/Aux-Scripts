klist -s
if [ $? -ne 0 ];
then
   kinit aghosal
fi

   

cmd="ssh $@"
echo "Running: $cmd"

tmpf=/tmp/${USER}_ssh_tunnel_lxplus.tmp
ps aux | grep ssh  > $tmpf

# kill process if running
procid=`cat $tmpf | grep "$cmd" | awk '{ print $2 }'` 

rm -f $tmpf


if [[ ! -z $procid ]]; then 
   echo "procid to kill: $procid"
   kill -9 $procid
fi

$cmd -L  5909:localhost:5909 -N -f -l aghosal lxplus751.cern.ch

#vncviewer -passwd ~/.vncpassword
vncviewer

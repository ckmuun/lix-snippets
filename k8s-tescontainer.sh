# get services 
kubectl get services -A



# start test container in default namespace. needs namespace declaration to reach services in other ns
kubectl run \
  --image=busybox box \
   sh -- -c 'sleep $((10**10))'
   
kubectl exec -it box sh
# now we are in the container

# crating file as the default is index.html which impedes a risk of overriding stuff
touch some-http-response.txt
wget http://<enter-service-name-here> > some-http-response.txt
cat some-http-response.txt

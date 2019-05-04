#!/bin/bash

set +ex

declare -a arr=("hypershift" "hyperkube" "cli" "cli-artifacts" "tests" "node" "deployer")

echo "Pulling from CI namespace " $1

## now loop through the above array
for i in "${arr[@]}"
do
   echo docker pull registry.svc.ci.openshift.org/$1/stable/$i
   echo docker tag registry.svc.ci.openshift.org/$1/stable/$i docker.io/avgupta/payload-components:$i
   echo docker push docker.io/avgupta/payload-components:$i
   # or do whatever with individual element of the array
done

# You can access them using echo "${arr[0]}", "${arr[1]}" also

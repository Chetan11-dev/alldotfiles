alias k="kubectl"
alias kp="k get pods"
alias ks="k get services"

alias sd="skaffold.exe dev" 

alias udemy-bot-logs="kubectl logs -l app=udemy-bot --tail=2000 "
alias master-logs="kubectl logs -l app=master --tail=2000"
alias master-runner-logs="kubectl logs -l app=master-runner --tail=2000"
alias proton-vpn-logs="kubectl logs -l app=udemy-bot -c protonvpn"

alias count-proton-vpn-connected="kubectl logs -l app=udemy-bot -c protonvpn --tail=2000  | grep 'Connected!' | wc  -l"
alias count-failed-proton-vpn="kubectl logs -l app=udemy-bot -c protonvpn  --tail=2000 | grep 'Authentication failed.' | wc  -l"
alias count-proton-vpn-created="kubectl logs -l app=udemy-bot | grep Created |wc  -l"

alias dbup="docker-compose  build && docker-compose  up --force-recreate"
alias dup="docker-compose  up --force-recreate"
alias docker-login="docker login -u \"chetan1111\" -p \"qwaszxnmklop1478\" docker.io"
alias dcd="docker-compose down --remove-orphans"

alias digital-ocean-bash="docker-compose exec doctl bash"
alias digital-ocean-first-run="dup -d && digital-ocean-bash"

alias kmasterrunnerbash="kubectl exec -it deploy/master-runner-depl -- bash"
alias kmasterbash="kubectl exec -it deploy/master-depl -- bash"
alias kfillerbash="kubectl exec -it job/filler -- sh"

alias delete-deployments="kubectl delete --all deployments"
alias delete-containers="docker rm -vf $(docker ps -a -q)"
alias delete-jobs="kubectl delete jobs `kubectl get jobs -o custom-columns=:.name`"
alias delete-udemy-bot="kubectl delete pods -l app=udemy-bot  --grace-period=1"


# IFS='' read -r -d '' var <<'EOF'
# { "some_string": "Hello mom it's me!" }
# EOF
function dpublish(){
    docker build -t "$1" .  && docker push "$1"
}


function dpublish(){
    docker build -t "$1" .  && docker push "$1"
}

function dbuild(){
    docker build -t "$1" .
}

function kbash(){
    kubectl exec -it "$1" -- bash
}


function kreapply(){
    kubectl delete -f "$1" && kubectl apply -f "$1" 
}


function kapply(){
    kubectl apply -f "$1" 
}

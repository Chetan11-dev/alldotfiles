alias k="kubectl"
alias kp="k get pods"
alias ks="k get services"

alias sd="skaffold.exe dev" 
alias sdl="skaffold.exe delete" 

alias udemy-bot-logs="kubectl logs -l app=udemy-bot --tail=2000 "
alias protonvpn-logs="kubectl logs -l app=udemy-bot --tail=2000 -c protonvpn "
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

alias digital-ocean-bash="docker-compose exec -it doctl bash"
alias digital-ocean-first-run="dup -d && digital-ocean-bash"

alias kmasterrunnerbash="kubectl exec -it deploy/master-runner-depl -- bash"
alias kmasterbash="kubectl exec -it deploy/master-depl -- bash"
alias kfillerbash="kubectl exec -it job/filler -- bash"

alias delete-deployments="kubectl delete --all deployments"
alias delete-containers="docker rm -vf $(docker ps -a -q)"
alias delete-jobs="kubectl delete jobs `kubectl get jobs -o custom-columns=:.name`"
alias delete-udemy-bot="kubectl delete pods -l app=udemy-bot  --grace-period=1"

alias speed-test="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -"



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
    kubectl delete -f "$1"  --grace-period=1 && kubectl apply -f "$1" 
}


function kapply(){
    kubectl apply -f "$1" 
}


function find-largest-files(){
    du -a . | sort -n -r | head -n 20
}


function all-folder-sizes(){
    du  --max-depth=1 -h
}



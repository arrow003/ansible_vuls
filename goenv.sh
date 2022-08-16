export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

##CN env set
go env -w GO111MODULE=on
go env -w GOPROXY=https://goproxy.cn,direct

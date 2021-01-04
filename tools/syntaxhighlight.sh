cd $GOPATH/src/github.com/alecthomas/chroma/_tools
cp ~/projects/web/static/design/syntax/nightowl-pygments-style/nightowl.py .
#copy nightowl.py to here
python style.py nightowl nightowl.NightOwl > nightowl.go
mv nightowl.go ../styles/
#mv nightowl.go $GOPATH/src/github.com/alecthomas/chroma/styles/
#change values in the go script ... or make it work from cli
go run new_chromastyles.go > nightowl-chroma.css

#also, need a configure option in config file (toml,yaml,json)

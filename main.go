package main // import "github.com/petermbenjamin/lolcat"

import (
	"bufio"
	"os"

	lol "github.com/kris-nova/lolgopher"
)

var (
	version = ""
	commit  = ""
	date    = ""
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	for scanner.Scan() {
		lol.Println(scanner.Text())
	}
}

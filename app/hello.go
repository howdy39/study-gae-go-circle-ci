package app

import (
	"net/http"
	"fmt"
)

func init() {
	http.HandleFunc("/hello", handler)
}

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, getMessage())
}

func getMessage() string{
	return "Hello, world!"
}
package main

import (
	"io"
	"net/http"
)

func firstPage(w http.ResponseWriter, r *http.Request) {
	io.WriteString(w, "<h1> hello, this is my first page")
}
func main() {
	http.HandleFunc("/", firstPage)
	http.ListenAndServe(":8000", nil)
}

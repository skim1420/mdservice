package main

import (
  "io"
  "net/http"
)

func hello(w http.ResponseWriter, r *http.Request) {
  io.WriteString(w, "<body style='background-color: brown'><h1>Hello World!</h1></body>")
}

func main() {
  http.HandleFunc("/", hello)
  http.ListenAndServe(":80", nil)
}

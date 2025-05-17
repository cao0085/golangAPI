package main

import (
    "log"
    "net/http"
    "os"

    "github.com/go-chi/chi/v5"
)

func main() {
    port := os.Getenv("PORT")
    if port == "" {
        port = "7070" // fallback
    }

    r := chi.NewRouter()

    r.Get("/health", func(w http.ResponseWriter, r *http.Request) {
        w.Write([]byte("OK (" + os.Getenv("MODE") + ")"))
    })

    log.Println("Server running at :" + port)
    log.Fatal(http.ListenAndServe("0.0.0.0:"+port, r))
}
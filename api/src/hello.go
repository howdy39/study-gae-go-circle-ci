package src

import (
	"net/http"
	"github.com/gin-gonic/gin"
)

func init() {
	r := gin.Default()
	r.GET("/hello", helloHandler)
	http.Handle("/", r)
}


func helloHandler(g *gin.Context) {
	g.String(http.StatusOK, getMessage())
}

func getMessage() string{
	return "Hello, world!!3"
}
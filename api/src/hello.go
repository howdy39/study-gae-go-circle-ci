package src

import (
	"net/http"
	"github.com/gin-gonic/gin"
	"html/template"
)

func init() {
	r := gin.Default()
	r.GET("/", indexHandler)
	r.GET("/hello", helloHandler)
	http.Handle("/", r)
}


func indexHandler(g *gin.Context) {
	indexTemplate := template.Must(template.ParseFiles("templates/index.html"))
	indexTemplate.Execute(g.Writer, nil)
}

func helloHandler(g *gin.Context) {
	g.String(http.StatusOK, getMessage())
}

func getMessage() string{
	return "Hello, world!!3"
}
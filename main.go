package main

import (
	_ "IndicatorService/routers"

	beego "github.com/beego/beego/v2/server/web"
)

func main() {
	beego.BConfig.CopyRequestBody = true
	beego.Run() // default listens on :8080
}

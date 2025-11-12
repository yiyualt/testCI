package routers

import (
	"IndicatorService/controllers"
	beego "github.com/beego/beego/v2/server/web"
)

func init() {
	beego.Router("/ping", &controllers.PingController{})
}
 
package controllers

import beego "github.com/beego/beego/v2/server/web"

// PingController handles GET /ping
type PingController struct {
	beego.Controller
}

func (c *PingController) Get() {
	c.Data["json"] = map[string]string{"status": "ok"}
	c.ServeJSON()
}

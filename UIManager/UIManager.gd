extends Node

var hud = null

func show_prompt(text: String):
	print("HUD linked? ", hud)
	if hud and is_instance_valid(hud):
		hud.show_prompt(text)

func hide_prompt():
	if hud:
		hud.hide_prompt()
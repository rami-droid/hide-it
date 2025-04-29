extends CanvasLayer

@onready var prompt_label = $PromptLabel

func _ready():
    UIManager.hud = self

func show_prompt(text):
    
    prompt_label.text = text
    prompt_label.visible = true

    print(prompt_label.visible)

func hide_prompt():
    prompt_label.visible = false
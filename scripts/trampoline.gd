extends Area2D

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_body_entered(body: CharacterBody2D) -> void:
	if body.is_in_group("player"):
		#Only trigger from above
		if body.global_position.y < global_position.y:
			body.bounce(-800)
			animated_sprite_2d.play("bouncing")
			
			
func _on_body_exited(body: CharacterBody2D) -> void:
	if body.is_in_group("player"):
		animated_sprite_2d.play("idle")
	
	

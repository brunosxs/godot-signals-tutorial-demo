extends Node2D


func _on_Area2D_body_enter(body): # The name you give to the argument doesn't really matter, just understand that this function will always receive an argument and if you don't provide a variable for it, then an error will occur. 
	if body extends KinematicBody2D:
		print("Someone entered our territory!") # Any kinematic body that enters this area will  make the code display this message.
		if body.get_name() == "player":
			print("Player entered enemy territory!") # But only the one named "player" will trigger this one. Try renaming the "player" node.
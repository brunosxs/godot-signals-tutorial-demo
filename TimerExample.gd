extends RichTextLabel

# This is a simple example of the use of signals
# Take a look at the area2d.tscn for a more complex example, this time with arguments.

func _ready():
	set_bbcode("The signal will be emmited soon...\nWait...\n")
	pass


func _on_Timer_timeout(): # This event will be fired a single time when two seconds have passed since its creation.
						  # You can change the parameters of the Timer by editing its properties in the Inspector.
	print("Hey, I have fired!")
	print("Isn't this cool?")
	set_bbcode(str(get_bbcode()+"Hey, I have fired!\nIsn't this cool?"))

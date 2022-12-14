extends Area


# Declare member variables here. Examples:

var speed = -30




# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation += global_transform.basis.z * speed * delta
	
func Destroy():
	queue_free()



func _on_Bullet_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage()
		Destroy()

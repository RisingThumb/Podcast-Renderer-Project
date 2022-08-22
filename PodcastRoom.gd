extends Spatial


func _ready():
	get_tree().get_root().set_transparent_background(true)
	$AnimationPlayer.play("Lol")

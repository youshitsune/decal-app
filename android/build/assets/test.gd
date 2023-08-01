extends Label



# Called when the node enters the scene tree for the first time.
func _ready():
	get_node(".").set_text(str(Time.get_date_dict_from_system()["month"]))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

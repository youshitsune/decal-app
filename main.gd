extends Control

# Called when the node enters the scene tree for the first time.
func _ready():
	$HTTPRequest.request_completed.connect(_on_request_completed)
	$HTTPRequest.request("<hostname-of-your-server>", ["Content-Type: application/json"], HTTPClient.METHOD_POST, JSON.stringify({"pass": "<password_here>"}))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_request_completed(result, response_code, headers, body):
	var data = JSON.parse_string(body.get_string_from_utf8())
	get_node("ScrollContainer/Label").set_text("\n".join(data[Time.get_date_dict_from_system()["month"]-1]))

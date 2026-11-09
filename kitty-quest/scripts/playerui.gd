extends CanvasLayer

func update_keys(keys):
	var text = ""
	if keys < 10:
		text = "0"
	
	self.get_child(1).get_child(0).text = text + str(keys)

func update_yarn(yarn):
	var text = ""
	if yarn < 10:
		text = "0"
	
	self.get_child(2).get_child(0).text = text + str(yarn)

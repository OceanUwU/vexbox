extends Box

var thing: int

func on_other_box_opened(other) -> void:
	if thing != 1:
		for box in get_adjacent_boxes(false, false):
			if box.revealed and box.open and box.id != "virus":
				modStat("timesActivated", 1)
				box.loadType("virus")
				box.thing = 1

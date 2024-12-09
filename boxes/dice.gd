extends Box

func on_open():
	set_custom_num(1)

func can_use() -> bool:
	return customNum > 0

func on_self_clicked() -> void:
	main.play_sfx(SFXTypes.ACTIVATE)
	for box in get_adjacent_boxes(false, false):
		var valids = []
		for i in main.all_boxes:
			if i != box.id and i != "max":
				valids.append(i)
		if valids.size() > 0:
			box.loadType(valids.pick_random())
	set_custom_num(customNum-1)

extends Box

func on_open() -> void:
    main.add_status(StatusTypes.CURSE, 1)
extends Box

func on_open() -> void:
    main.add_status(StatusTypes.CLOSENEXT, 1)
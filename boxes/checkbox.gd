extends Box

func on_other_box_opened() -> void:
    if !main.last_opened.was_revealed_when_opened and open and !destroyed and !just_opened:
        main.reveal_random()
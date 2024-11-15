extends Box

var disguise: String

func on_open() -> void:
    if main.rng.randi_range(1, 3) == 1:
        main.lose()

func on_reveal(_was_already_revealed: bool) -> void:
    if disguise == null:
        var replacement = id
        while replacement == id:
            replacement = main.all_boxes[main.rng.randi_range(0, main.unlockedBoxes - 1)]
            disguise = replacement
    var orig_type := id
    id = disguise
    load_img()
    load_text()
    $Sprite2D.texture = revealedImg
    id = orig_type
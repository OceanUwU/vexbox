extends Badge

func postGameEnd():
	if !unlocked and main.getStat("opens") >= 500:
		unlock()

func onRunStart():
	if enabled:
		setup_number(5)

func onOpenBox(box):
	if enabled:
		setup_number(number-1)
		if number == 0:
			setup_number(5)
			main.reveal_random()

func getProgress():
	return main.getStat("opens")

func getMaxProgress():
	return 500

func getCost():
	return 2

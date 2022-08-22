extends Spatial


func _on_Timer_timeout():
	var volLeft = db2linear(AudioServer.get_bus_peak_volume_left_db(1, 0))
	var volRight = db2linear(AudioServer.get_bus_peak_volume_right_db(1, 0))
	$Tween.interpolate_property($SpriteTopHalf, "translation:y",
		$SpriteTopHalf.transform.origin.y, volLeft/6, .1,
		Tween.TRANS_LINEAR)
	$Tween.interpolate_property($SpriteBottomHalf, "translation:y",
		$SpriteBottomHalf.transform.origin.y, -volLeft/12, .1,
		Tween.TRANS_LINEAR)
	$Tween.start()
	

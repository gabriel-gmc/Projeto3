extends KinematicBody2D

var floatingTxt = preload("res://Outros/FloatingText.tscn")

export(float) var maxHP = 400
var currentHP = maxHP
var damage = 20

func _on_Area2D_area_entered(area):
	currentHP = currentHP - damage
	$HP.text = str(currentHP)
	if currentHP <= 150:
		currentHP = maxHP

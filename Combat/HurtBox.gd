extends Area2D

const HitEffect = preload("res://Effects/HitEffect.tscn")

export(bool) var show_hit_effect = true

func _on_HurtBox_area_entered(area):
	if show_hit_effect:
		var effect = HitEffect.instance()
		var main = get_tree().current_scene
		main.add_child(effect)
		effect.global_position = global_position

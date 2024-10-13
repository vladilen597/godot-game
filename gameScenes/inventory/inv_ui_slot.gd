extends Panel

@onready var item_visual: Sprite2D = $inv_ui_slot_button/CenterContainer/Panel/item_display
@onready var amount_text: Label = $inv_ui_slot_button/CenterContainer/Panel/Label

var current_slot: InvSlot  # Переменная для хранения текущего слота



func update(slot: InvSlot):
	current_slot = slot
	if !slot.item:
		item_visual.visible = false
		amount_text.visible = false
	else:
		item_visual.visible = true
		item_visual.texture = slot.item.texture
		amount_text.visible = true
		if (slot.amount > 1):
			amount_text.text = str(slot.amount)


func _on_inv_ui_slot_button_pressed() -> void:
	if current_slot and current_slot.item:
		SlotPressSignal.item_pressed.emit(current_slot.item)

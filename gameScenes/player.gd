extends Control

@onready var inv: Inv = preload("res://gameScenes/inventory/player_inventory.tres")
@onready var slots: Array = $ScrollContainer/GridContainer.get_children()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SlotPressSignal.connect("item_pressed", _on_inv_ui_slot_1_item_pressed)
	inv.update.connect(update_slots)
	update_slots()

func update_slots():
	for i in range(min(inv.slots.size(), slots.size())):
		slots[i].update(inv.slots[i])

func collect(item):
	inv.insert(item)
	
func show_item_popup():
	$ItemPopup.visible = not $ItemPopup.visible


func _on_inv_ui_slot_1_item_pressed(item: InvItem) -> void:
	$Button.visible = true
	$Button/ItemPopup/ItemDescription.text = item.description
	$Button/ItemPopup/CenterContainer/Panel/ItemIcon.texture = item.texture


func _on_background_popup_pressed() -> void:
	$Button.visible = false

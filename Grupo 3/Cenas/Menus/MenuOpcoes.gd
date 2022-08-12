extends Control

# Função para criar as opções de dificuldade
func SetDropdownDificuldade():
	var dropdownDificuldade = $TextureRect/ContainerOpcoes/DropdownDificuldade
	
	# Seta as opções do dropdown
	dropdownDificuldade.add_item("Fácil") #0
	dropdownDificuldade.add_item("Médio") #1
	dropdownDificuldade.add_item("Difícil") #2
	
	# Seta a opção selecionada como médio
	dropdownDificuldade.select(1)

	# Cria o evento de mudança de opção selecionada
	dropdownDificuldade.connect("item_selected", self, "on_item_selected")

# Função executada quando a opção do dropdown de dificuldade muda
func on_item_selected(id):
	print(id)

# Função executada quando clica no botão voltar
func _on_BotaoVoltarMenuPrincipal_pressed():
	get_tree().change_scene("res://Cenas/Menus/MenuPrincipal.tscn")	

# Quando o documento estiver pronto
func _ready():
	SetDropdownDificuldade()

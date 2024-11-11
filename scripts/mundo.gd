extends Node2D

var pre_coelho = preload("res://scenes/coelho.tscn")
var tempo = 0
onready var pontos = $label
var score = 0
func _ready():
	pass
func _process(delta):
	pontos.text = "Pontos: " + str(score)
	tempo += delta
	if tempo > rand_range(2, 4):
		InstanciarCoelho()
		tempo = 0
		
		
func InstanciarCoelho():
	var c = pre_coelho.instance()
	c.position = Vector2(rand_range(50, 550), 891)
	c.vel = rand_range(2,3)
	c.pos_final = rand_range(500, 800)
	add_child(c)

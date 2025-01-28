extends Node2D

var test_array: Array[String]= ["Aryan","Ace","Krishna","Jai"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
#Updating in the logo from the parent Level component 
	$Logo.rotation_degrees=90
	$Logo.position=1010

#Getting in the new node named in as Logo
	get_node("Logo")
	
	# This is similar most similar to the
	#python array script 
	
	for i in test_array:
		print(i)
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Logo.rotation +=10 
	$Logo.position+=15
	
	
	if ($Logo.rotation_degree > 180):
		$Logo.rotation_degrees = 0
		
		if($Logo.position.x==1000):
			$Logo.position.x=0
		
	pass

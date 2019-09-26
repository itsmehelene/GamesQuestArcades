Review.destroy_all
Review.create!(content: "awesome!", arcade: Arcade.first)
Review.create!(content: "not good at all!", arcade: Arcade.last)

Arcade.destroy_all
arcade = Arcade.new(
	name: "DAVE AND BUSTER",
	price: 900,
	address: "Rue Marietton, Écully, Auvergne-Rhône-Alpes, France",
	capacity: 250,
	photo: "https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566567922/rymcbabhbwuggesicxf5.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "THUNDER'S",
	price: 2600,
	address: "Rue Berthelot, Villeurbanne, Auvergne-Rhône-Alpes, France",
	capacity: 900,
	photo: "https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566569502/k2ckebwtocjwfdvy2r5c.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "SPACEMOUNTAIN !",
	price: 130,
	address: "Rue Cavelier de la Salle, Montpellier, Occitanie, France",
	capacity: 570,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566569548/sohewn1qtods1tj6woah.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "MAGIC KINGDOM",
	price: 780,
	address: "15 Rue Roode, Toulouse, Occitanie, France",
	capacity: 600,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566569658/wq8a9wgzox9txiwkbukx.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "LINK",
	price: 140,
	address: "5 Rue Roode, Toulouse, Occitanie, France",
	capacity: 30,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566569854/w44w4wfafac1smy076s5.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "SPEED PLAY",
	price: 780,
	address: "Rue de la Breuchillière, Dijon, Bourgogne-Franche-Comté, France",
	capacity: 600,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566569942/wc7kzlmky8nlxh03knol.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "DANS LES NUAGES",
	price: 1500,
	address: "112 Cours Charlemagne, Lyon 2e Arrondissement, Auvergne-Rhône-Alpes,",
	capacity: 300,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566566559/sig6swpa6o4gvspuhkcf.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "HUNGERGAMES",
	price: 3500,
	address: "Place Bellecour, Lyon 2e Arrondissement, Auvergne-Rhône-Alpes, France",
	capacity: 350,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566566785/scnlj1erovnf2npqrtlg.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "GIFIMAN",
	price: 560,
	address: "35 Allée des Cordeliers, Villefranche-sur-Saône, Auvergne-Rhône-Alpes, France",
	capacity: 100,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566566943/o12bebq2o2pw6iu9yar2.jpg"
	)
arcade.save!

arcade = Arcade.new(
	name: "GET READY TO PLAY",
	price: 790,
	address: "34 Route d'Oulins, Anet, Centre-Val de Loire, France",
	capacity: 270,
	photo: src="https://res.cloudinary.com/arcadesquest/image/upload/c_fill,h_220,w_260/v1566567633/vhgfglzhjml4zkvqbikx.jpg"
	)
arcade.save!
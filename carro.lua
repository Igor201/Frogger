local carro = {
	carro1,
	carro2,
	carro3,
	carro4,
	carro5,
	carro6}

function carro:criar()

	carro.carro1 = display.newImageRect( "Carro1.png", 100, 40 )
	carro.carro1.x = 0
	carro.carro1.y = 325

	carro.carro2 = display.newImageRect( "Carro2.png", 100, 40 )
	carro.carro2.x = 200
	carro.carro2.y = 280

	carro.carro3 = display.newImageRect( "Carro3.png", 100, 40 )
	carro.carro3.x = 300
	carro.carro3.y = 235

	carro.carro4 = display.newImageRect( "Carro4.png", 100, 40 )
	carro.carro4.x = 300
	carro.carro4.y = 175

	carro.carro5 = display.newImageRect( "Carro5.png", 100, 40 )
	carro.carro5.x = 150
	carro.carro5.y = 130

	carro.carro6 = display.newImageRect( "Carro6.png", 100, 40 )
	carro.carro6.x = 400
	carro.carro6.y = 85
end

return carro
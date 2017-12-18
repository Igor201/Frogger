-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local physics = require ("physics")
physics.start()
local cenario = require("cenario")
cenario:criar()
local carro = require("carro")
carro:criar()
local sapo = require("sapo")
sapo:criar()

local botaoesquerda = display.newRect( 25, 465, 100, 30 )
	  botaoesquerda:setFillColor( 0.3 )
local botaodireita = display.newRect( 290, 465, 100, 30 )
	  botaodireita:setFillColor( 0.3 )
local botaocima = display.newRect( 160, 430, 100, 30 )
	  botaocima:setFillColor( 0.3 )
local botaobaixo = display.newRect( 160, 465, 100, 30 )
	  botaobaixo:setFillColor( 0.3 )

function redefinirsapo()

physics.removeBody(sapo)

end	  

function destroiSapo(event)

physics.removeBody(sapo)
sapo.x = display.contentCenterX
sapo.y = display.contentHeight - 100
physics.addBody( sapo, "static")

end

function movimentopista1()
	
	carro.carro1.x = carro.carro1.x + 20
	physics.addBody( carro.carro1, "dynamic")
	physics.setGravity( 0, 0 )

	carro.carro2.x = carro.carro2.x + 20
	physics.addBody( carro.carro2, "dynamic")
	physics.setGravity( 0, 0 )

	carro.carro3.x = carro.carro3.x + 20
	physics.addBody( carro.carro3, "dynamic")
	physics.setGravity( 0, 0 )

	if carro.carro1.x > display.contentWidth + 50 then
		carro.carro1.x = 50
		carro.carro1.y = 325
	end

	if carro.carro2.x > display.contentWidth + 50 then
		carro.carro2.x = 50
		carro.carro2.y = 280
	end

	if carro.carro3.x > display.contentWidth + 50 then
		carro.carro3.x = 50
		carro.carro3.y = 235
	end
end

function movimentopista2()
	

	carro.carro4.x = carro.carro4.x - 20
	physics.addBody( carro.carro4, "dynamic")
	physics.setGravity( 0, 0 )

	carro.carro5.x = carro.carro5.x - 20
	physics.addBody( carro.carro5, "dynamic")
	physics.setGravity( 0, 0 )

	carro.carro6.x = carro.carro6.x - 20
	physics.addBody( carro.carro6, "dynamic")
	physics.setGravity( 0, 0 )

	
	if carro.carro4.x < - 50 then
		carro.carro4.x = 300
		carro.carro4.y = 175
	end

	if carro.carro5.x < -100 then
		carro.carro5.x = 250
		carro.carro5.y = 130
	end

	if carro.carro6.x <  -50 then
		carro.carro6.x = 450
		carro.carro6.y = 85
	end

end

timer.performWithDelay(0500,movimentopista1, 0)
timer.performWithDelay(0500,movimentopista2, 0)


function moverCima( event )
	if event.phase == "began" then
		if sapo.corpo.y > 50 then
			sapo.corpo.y = sapo.corpo.y - 20
		end
	end
end

function moverBaixo( event )
	if event.phase == "began" then
		if sapo.corpo.y < display.contentHeight - 100 then
			sapo.corpo.y = sapo.corpo.y + 20
		end
	end
end

function moverEsquerda( event )
	if event.phase == "began" then
		if sapo.corpo.x > 20 then
			sapo.corpo.x = sapo.corpo.x - 20
		end
	end
end

function moverDireita( event )
	if event.phase == "began" then
		if sapo.corpo.x < display.contentWidth - 20 then
			sapo.corpo.x = sapo.corpo.x + 20
		end
	end
end

botaocima:addEventListener("touch", moverCima)
botaobaixo:addEventListener("touch", moverBaixo)
botaoesquerda:addEventListener("touch", moverEsquerda)
botaodireita:addEventListener("touch", moverDireita)
sapo.corpo:addEventListener( "collision", destroiSapo)
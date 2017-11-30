-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local physics = require ("physics")
physics.start()

local sapo = display.newCircle( display.contentCenterX, display.contentCenterY, 30 )
physics.addBody( sapo, "static")

local carro = display.newRect( 50, 150, 100, 30 )



local botaoesquerda = display.newRect( 25, 465, 100, 30 )
	  botaoesquerda:setFillColor( 0.3 )
local botaodireita = display.newRect( 290, 465, 100, 30 )
	  botaodireita:setFillColor( 0.3 )
local botaocima = display.newRect( 160, 430, 100, 30 )
	  botaocima:setFillColor( 0.3 )
local botaobaixo = display.newRect( 160, 465, 100, 30 )
	  botaobaixo:setFillColor( 0.3 )

function destroiSapo(event)
	timer.performWithDelay(1, event.target:removeSelf())
end

function movimento()
	
	carro.x = carro.x + 20
	if carro.x > display.contentWidth + 50 then
		carro.x = 50
		carro.y = 150
	physics.addBody( carro, "dynamic")
	physics.setGravity( 0, 0 )

	end
end


 timer.performWithDelay(0500,movimento, 0)



function moverCima( event )
	if event.phase == "began" then
		if sapo.y > 50 then
			sapo.y = sapo.y - 20
		end
	end
end

function moverBaixo( event )
	if event.phase == "began" then
		if sapo.y < display.contentHeight - 100 then
			sapo.y = sapo.y + 20
		end
	end
end

function moverEsquerda( event )
	if event.phase == "began" then
		if sapo.x > 30 then
			sapo.x = sapo.x - 10
		end
	end
end

function moverDireita( event )
	if event.phase == "began" then
		if sapo.x < display.contentWidth - 30 then
			sapo.x = sapo.x + 10
		end
	end
end

botaocima:addEventListener("touch", moverCima)
botaobaixo:addEventListener("touch", moverBaixo)
botaoesquerda:addEventListener("touch", moverEsquerda)
botaodireita:addEventListener("touch", moverDireita)
sapo:addEventListener( "collision", destroiSapo)
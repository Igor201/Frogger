-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local sapo = display.newCircle( display.contentCenterX, display.contentCenterY, 30 )
local carro = display.newRect( - 50, 150, 100, 30 )


local botaoesquerda = display.newRect( 25, 465, 100, 30 )
	  botaoesquerda:setFillColor( 0.3 )
local botaodireita = display.newRect( 290, 465, 100, 30 )
	  botaodireita:setFillColor( 0.3 )
local botaocima = display.newRect( 160, 430, 100, 30 )
	  botaocima:setFillColor( 0.3 )
local botaobaixo = display.newRect( 160, 465, 100, 30 )
	  botaobaixo:setFillColor( 0.3 )

function moverCarro(event)
	
end	

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
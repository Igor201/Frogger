-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here
local physics = require ("physics")
physics.start()
physics.setDrawMode("debug")
local cenario = require("cenario")
cenario:criar()
local carro = require("carro")
carro:criar()
local life = require("life")
life:vida()
local vitoria = require("victory")
vitoria:criarChegada()
physics.addBody(vitoria.chegada, "dynamic")
physics.setGravity(0,0)
local sapo = require("sapo")
sapo:criar()
sapo:adicionaCorpoSapo()
auxvida = 1
auxvitoria = 1

function removeSapo( )
	print("Removeu sapo")
	timer.performWithDelay(1, sapo.corpo:removeSelf())
end

function removeCenario()
timer.performWithDelay(1, cenario.rua:removeSelf())
timer.performWithDelay(1, cenario.rua2:removeSelf())
timer.performWithDelay(1, cenario.acostamento:removeSelf())
timer.performWithDelay(1, cenario.iniciocena:removeSelf())
timer.performWithDelay(1, cenario.finalcena:removeSelf())
end

function removeCarro()
timer.performWithDelay(1, carro.carro1:removeSelf())
timer.performWithDelay(1, carro.carro2:removeSelf())
timer.performWithDelay(1, carro.carro3:removeSelf())
timer.performWithDelay(1, carro.carro4:removeSelf())
timer.performWithDelay(1, carro.carro5:removeSelf())
timer.performWithDelay(1, carro.carro6:removeSelf())
end

function adicionaCorpoCarro()
physics.addBody( carro.carro1, "dynamic")
physics.setGravity( 0, 0 )
physics.addBody( carro.carro2, "dynamic")
physics.setGravity( 0, 0 )
physics.addBody( carro.carro3, "dynamic")
physics.setGravity( 0, 0 )
physics.addBody( carro.carro4, "dynamic")
physics.setGravity( 0, 0 )
physics.addBody( carro.carro5, "dynamic")
physics.setGravity( 0, 0 )
physics.addBody( carro.carro6, "dynamic")
physics.setGravity( 0, 0 )

end

function verificaVida(auxvida)
	if auxvida == 2 then
		 life:vida2()
	end
	if auxvida == 3 then
		life:vida3()	
	end		
end

function verificaVitoria(auxvida)
	if auxvitoria -1 == 1 then
		 vitoria:vitoria1()
	end
	if auxvitoria -1 == 2 then
		 vitoria:vitoria2()
	end
	if auxvitoria -1 == 3 then
		 vitoria:vitoria3()
	end
	if auxvitoria -1 == 4 then
		 vitoria:vitoria4()
	end
	if auxvitoria -1 == 5 then
		 vitoria:vitoria5()
	end
end

function colisaoCarro(event)
auxvida = auxvida + 1	
removeSapo()
removeCarro()
removeCenario()
cenario.criar()
vitoria:criarChegada()
carro.criar()
sapo.criar()
print(auxvida)
verificaVida(auxvida)
end	  

sapo:adicionaCorpoSapo()

function colisaoChegada(event)
auxvitoria = auxvitoria + 1	
removeSapo()	
removeCarro()
removeCenario()
cenario.criar()
vitoria:criarChegada()
carro.criar()
sapo.criar()
verificaVitoria(auxvitoria)
end	  

function movimentopista1()
	
	carro.carro1.x = carro.carro1.x + 20
	physics.addBody( carro.carro1, "dynamic")
	physics.setGravity( 0, 0 )
	carro.carro1:addEventListener("collision", colisaoCarro)

	carro.carro2.x = carro.carro2.x + 20
	physics.addBody( carro.carro2, "dynamic")
	physics.setGravity( 0, 0 )
	carro.carro2:addEventListener("collision", colisaoCarro)

	carro.carro3.x = carro.carro3.x + 20
	physics.addBody( carro.carro3, "dynamic")
	physics.setGravity( 0, 0 )
	carro.carro3:addEventListener("collision", colisaoCarro)

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
	carro.carro4:addEventListener("collision", colisaoCarro)

	carro.carro5.x = carro.carro5.x - 20
	physics.addBody( carro.carro5, "dynamic")
	physics.setGravity( 0, 0 )
	carro.carro5:addEventListener("collision", colisaoCarro)

	carro.carro6.x = carro.carro6.x - 20
	physics.addBody( carro.carro6, "dynamic")
	physics.setGravity( 0, 0 )
	carro.carro6:addEventListener("collision", colisaoCarro)

	
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


timer1 = timer.performWithDelay(0500,movimentopista1, 0)
timer2 = timer.performWithDelay(0500,movimentopista2, 0)
timersapo = timer.performWithDelay(0500,sapo.adicionaCorpoSapo, 0)


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
--[[carro.carro1:addEventListener("collision", colisaoCarro)
carro.carro2:addEventListener("collision", colisaoCarro)
carro.carro3:addEventListener("collision", colisaoCarro)
carro.carro4:addEventListener("collision", colisaoCarro)
carro.carro5:addEventListener("collision", colisaoCarro)
carro.carro6:addEventListener("collision", colisaoCarro)]]
vitoria.chegada:addEventListener("collision", colisaoChegada)
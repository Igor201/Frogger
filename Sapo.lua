local sapo = {corpo}

function sapo:criar()

	sapo.corpo = display.newImageRect( "Sapo.png", 35, 35 )
	sapo.corpo.x = display.contentCenterX
	sapo.corpo.y = display.contentHeight - 100

end

function sapo:adicionaCorpoSapo()
	physics.addBody(sapo.corpo, "dynamic")
	physics.setGravity(0,0)
end


return sapo
local sapo = {corpo}

function sapo:criar()

	sapo.corpo = display.newImageRect( "sapo.jpeg", 40, 40 )
	sapo.corpo.x = display.contentCenterX
	sapo.corpo.y = display.contentHeight - 100
	physics.addBody( sapo.corpo, "static")

end

return sapo
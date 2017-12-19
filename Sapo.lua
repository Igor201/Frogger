local sapo = {corpo}

function sapo:criar()

	sapo.corpo = display.newImageRect( "Sapo.png", 35, 35 )
	sapo.corpo.x = display.contentCenterX
	sapo.corpo.y = display.contentHeight - 100

end

function sapo:vida( )

		vida1 = display.newImageRect( "coracao.png", 20, 20 )
		vida1.x = display.contentWidth * 0.75
		vida1.y = display.contentHeight * 0.09

		vida2 = display.newImageRect( "coracao.png", 20, 20 )
		vida2.x = display.contentWidth * 0.85
		vida2.y = display.contentHeight * 0.09

		vida3 = display.newImageRect( "coracao.png", 20, 20 )
		vida3.x = display.contentWidth * 0.95
		vida3.y = display.contentHeight * 0.09

end

function sapo:vida2( )

		vida2 = display.newImageRect( "coracao.png", 20, 20 )
		vida2.x = display.contentWidth * 0.85
		vida2.y = display.contentHeight * 0.09

		vida3 = display.newImageRect( "coracao.png", 20, 20 )
		vida3.x = display.contentWidth * 0.95
		vida3.y = display.contentHeight * 0.09

end

function sapo:vida3( )

		vida3 = display.newImageRect( "coracao.png", 20, 20 )
		vida3.x = display.contentWidth * 0.95
		vida3.y = display.contentHeight * 0.09

end

return sapo
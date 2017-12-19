local victory = {
			vitoria1, 
			vitoria2,
			vitoria3,
			vitoria4,
			vitoria5,
			chegada}

function victory:criarChegada()

	  --chegada = display.newRect( display.contentCenterX, display.contentHeight * 0.04, display.contentWidth, 2 )
	  	victory.chegada = display.newImageRect( "chegada.png", display.contentWidth, 3 )
		victory.chegada.x = display.contentCenterX
		victory.chegada.y = display.contentHeight * 0.045

end

function victory:vitoria1( )

		vitoria1 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria1.x = display.contentWidth * 0.05
		vitoria1.y = display.contentHeight * 0.09
end

function victory:vitoria2( )

		vitoria1 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria1.x = display.contentWidth * 0.05
		vitoria1.y = display.contentHeight * 0.09

		vitoria2 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria2.x = display.contentWidth * 0.12
		vitoria2.y = display.contentHeight * 0.09
end

function victory:vitoria3( )

		vitoria1 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria1.x = display.contentWidth * 0.05
		vitoria1.y = display.contentHeight * 0.09

		vitoria2 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria2.x = display.contentWidth * 0.12
		vitoria2.y = display.contentHeight * 0.09

		vitoria3 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria3.x = display.contentWidth * 0.19
		vitoria3.y = display.contentHeight * 0.09
end

function victory:vitoria4( )

		vitoria1 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria1.x = display.contentWidth * 0.05
		vitoria1.y = display.contentHeight * 0.09

		vitoria2 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria2.x = display.contentWidth * 0.12
		vitoria2.y = display.contentHeight * 0.09

		vitoria3 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria3.x = display.contentWidth * 0.19
		vitoria3.y = display.contentHeight * 0.09

		vitoria4 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria4.x = display.contentWidth * 0.26
		vitoria4.y = display.contentHeight * 0.09
end

function victory:vitoria5( )

		vitoria1 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria1.x = display.contentWidth * 0.05
		vitoria1.y = display.contentHeight * 0.09

		vitoria2 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria2.x = display.contentWidth * 0.12
		vitoria2.y = display.contentHeight * 0.09

		vitoria3 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria3.x = display.contentWidth * 0.19
		vitoria3.y = display.contentHeight * 0.09

		vitoria4 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria4.x = display.contentWidth * 0.26
		vitoria4.y = display.contentHeight * 0.09

		vitoria5 = display.newImageRect( "estrela.png", 20, 20 )
		vitoria5.x = display.contentWidth * 0.33
		vitoria5.y = display.contentHeight * 0.09
end


return victory
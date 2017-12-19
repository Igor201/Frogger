cenario = {
    rua, 
    rua2,
    acostamento,
    iniciocena,
    finalcena
}

function cenario:criar()
    cenario.rua = display.newRect(display.contentWidth/2, display.contentHeight/15 * 8.5, display.contentWidth, display.contentHeight/12*4)
    cenario.rua:setFillColor(0.3, 0.3, 0.3)

    cenario.rua2 = display.newRect(display.contentWidth/2, display.contentHeight/12 * 3.5, display.contentWidth, display.contentHeight/12* 3.95)
    cenario.rua2:setFillColor(0.3, 0.3, 0.3)

    cenario.acostamento = display.newRect(display.contentWidth/2, display.contentHeight/14 * 6, display.contentWidth, display.contentHeight/30* 1.1)
    cenario.acostamento:setFillColor(0.3,0, 0 )
    
    cenario.iniciocena = display.newRect(display.contentWidth/2, display.contentHeight/12.8 * 11, display.contentWidth, display.contentHeight/3.5)
    cenario.iniciocena:setFillColor(0.3, 1, 0.3)

    cenario.finalcena = display.newRect(display.contentWidth/2,  display.contentHeight/12, display.contentWidth, display.contentHeight/12)
    cenario.finalcena:setFillColor(0.3, 1, 0.3)

    botaoesquerda = display.newImageRect( "botaoEsquerda.png", 100, 30 )
    botaoesquerda.x = display.contentWidth / 6
    botaoesquerda.y = (display.contentCenterY * 2) - 15

    botaodireita = display.newImageRect( "botaoDireita.png", 100, 30 )
    botaodireita.x = display.contentWidth * 0.834
    botaodireita.y = (display.contentCenterY * 2) - 15

    botaocima = display.newImageRect( "botaoCima.png", 122, 30 )
    botaocima.x = display.contentCenterX
    botaocima.y = (display.contentCenterY * 2) - 50

    botaobaixo = display.newImageRect( "botaoBaixo.png", 122, 30 )
    botaobaixo.x = display.contentCenterX
    botaobaixo.y = (display.contentCenterY * 2) - 15
end

return cenario
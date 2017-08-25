local composer = require( "composer" )

local scene = composer.newScene()

-- este metódo gotoApreBlocos() faz a trasição para apresentaBlocos.lua
-- arquivo que criado para colocar oque tinha escrito antes na main.lua

local function gotoMenuJogo(  )
	composer.gotoScene( "menuJogo", { time=800, effect="crossFade" } )
end

-- -----------------------------------------------------------------------------------
-- funções dos eventos da cena
-- -----------------------------------------------------------------------------------

-- criar()
function scene:create( event )

	local sceneGroup = self.view

	local fundo = display.newImageRect(sceneGroup, "FundoTela.png", display.actualContentWidth, display.actualContentHeight )
	fundo.anchorX = 0
	fundo.anchorY = 0
	fundo.x = 0 + display.screenOriginX 
	fundo.y = 0 + display.screenOriginY

	local titulo = display.newImageRect(sceneGroup, "NomeDoJogo.png", 300, 300 )
	titulo.x = display.contentCenterX+10	
	titulo.y = display.contentCenterY-150
	--------------------------------------------------
	
	local jog1 = display.newText( sceneGroup, "ROC      2429", display.contentCenterX, display.contentCenterY - 80, native.systemFont, 30 )
	jog1:setFillColor( 0, 0, 0 )
	local jog2 = display.newText( sceneGroup, "WAR      2399", display.contentCenterX, display.contentCenterY - 40, native.systemFont, 30 )
	jog2:setFillColor( 0, 0, 0 )
	local jog3 = display.newText( sceneGroup, "EDH      1890", display.contentCenterX, display.contentCenterY , native.systemFont, 30 )
	jog3:setFillColor( 0, 0, 0 )

	--------------------------------------------------
    local bSair = display.newText( sceneGroup, "Sair", display.contentCenterX, display.contentCenterY + 240, native.systemFont, 20 )
    bSair:setFillColor( 0, 0, 0 )

    bSair:addEventListener( "tap", gotoMenuJogo )


end


-- mostrar()
function scene:show( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- O código aqui é executado quando a cena ainda está fora da tela (mas está prestes a aparecer na tela)

	elseif ( phase == "did" ) then
		-- O código aqui é executado quando a cena está inteiramente na tela

	end
end


-- ocultar()
function scene:hide( event )

	local sceneGroup = self.view
	local phase = event.phase

	if ( phase == "will" ) then
		-- O código aqui é executado quando a cena está na tela (mas está prestes a sair da tela)

	elseif ( phase == "did" ) then
		-- O código aqui é executado imediatamente após a cena sair inteiramente da tela

	end
end


-- destruir()
function scene:destroy( event )

	local sceneGroup = self.view
	-- O código aqui é executado antes da remoção da visão da cena

end


-- -----------------------------------------------------------------------------------
-- Função do evento das cenas ouvintes
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
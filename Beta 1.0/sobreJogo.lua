local composer = require( "composer" )

local scene = composer.newScene()

local function gotoBackInicio(  )
	composer.gotoScene( "inicio", { time=800, effect="crossFade" } )
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

	local texto1 = display.newText( sceneGroup, "Aqui vamos colocar", display.contentCenterX, 170, native.systemFont, 20 )
	texto1:setFillColor( 0, 0, 0 )
	local texto2 = display.newText( sceneGroup, "Tudo sobre o Aritmus,", display.contentCenterX, 200, native.systemFont, 20 )
	texto2:setFillColor( 0, 0, 0 )
	local texto3 = display.newText( sceneGroup, "Sobre nós desenvolvedores", display.contentCenterX, 230, native.systemFont, 20 )
	texto3:setFillColor( 0, 0, 0 )
	local texto4 = display.newText( sceneGroup, "E envolvidos... ", display.contentCenterX, 260, native.systemFont, 20 )
	texto4:setFillColor( 0, 0, 0 )

	local bVoltar = display.newText( sceneGroup, "Voltar", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 20 )
	bVoltar:setFillColor( 0, 0, 0 )

	bVoltar:addEventListener( "tap", gotoBackInicio )

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
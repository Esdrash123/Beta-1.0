local composer = require( "composer" )

local scene = composer.newScene()

local function gotoBackInicio(  )
	composer.gotoScene( "inicio", {time = 800, effect="crossFade"} )
end

local function gotoMenuJogo ()
	composer.gotoScene( "menuJogo", {time = 800, effect="crossFade"} )
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

	local titulo = display.newText( sceneGroup, "Aritmus", display.contentCenterX, 70, native.systemFont, 50 )
	titulo:setFillColor( 0, 0, 0 )

	local nomeUsuario = display.newText( sceneGroup, "Nome de Usuario: ", display.contentCenterX -40, 230, native.systemFont, 17 )
	nomeUsuario:setFillColor( 0.2, 0.8, 0.5 )
	local senha = display.newText( sceneGroup, "Senha: ", display.contentCenterX -77, 260, native.systemFont, 17 )
	senha:setFillColor( 0, 1, 0.4 )

	local bVoltar = display.newText( sceneGroup, "Voltar", display.contentCenterX - 50, display.contentCenterY + 240, native.systemFont, 20 )
	bVoltar:setFillColor( 0.1, 1, 0.5 )

	bVoltar:addEventListener( "tap", gotoBackInicio )

	local bConfirma = display.newText( sceneGroup, "Confirma", display.contentCenterX + 50, display.contentCenterY + 240, native.systemFont, 20 )
	bConfirma:setFillColor( 1, 0, 0.3 )

	bConfirma:addEventListener( "tap", gotoMenuJogo )

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
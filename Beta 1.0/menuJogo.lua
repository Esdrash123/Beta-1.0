local composer = require( "composer" )

local scene = composer.newScene()

-- este metódo gotoApreBlocos() faz a trasição para apresentaBlocos.lua
-- arquivo que criado para colocar oque tinha escrito antes na main.lua
local function gotoApreBlocos(  )
	composer.gotoScene( "apresentaBlocos", { time=800, effect="crossFade" } )
end

local function gotoInicio(  )
	composer.gotoScene( "inicio", { time==800, effect="crossFade" } )
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

	local bJogar = display.newText( sceneGroup, "Jogar", display.contentCenterX, 200, native.systemFont, 20 ) 
    bJogar:setFillColor( 0.5, 0.5, 1 )

    bJogar:addEventListener( "tap", gotoApreBlocos )

    local bNiveis = display.newText( sceneGroup, "Níves", display.contentCenterX, 250, native.systemFont, 20 )
    bNiveis:setFillColor( 0, 0, 0 )

    local bTutorial = display.newText( sceneGroup, "Tutorial", display.contentCenterX, 300, native.systemFont, 20 )
    bTutorial:setFillColor( 0.4, 0.4, 0.4 )

    local bHistorico = display.newText( sceneGroup, "Historico", display.contentCenterX, 350, native.systemFont, 20 )
    bHistorico:setFillColor( 1, 0.4, 0.9 )

    local bRanking = display.newText( sceneGroup, "Ranking", display.contentCenterX, 400, native.systemFont, 20 )
    bRanking:setFillColor( 0, 0, 1 )

    local bSair = display.newText( sceneGroup, "Sair", display.contentCenterX, display.contentCenterY + 240, native.systemFont, 20 )
    bSair:setFillColor( 1, 0.9, 0.2 )

    bSair:addEventListener( "tap", gotoInicio )


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
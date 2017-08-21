local composer = require( "composer" )

local scene = composer.newScene()

local function gotoEntrar(  )
	composer.gotoScene( "entrar", {time=800, effect="crossFade"} )
end

local function gotoRegistrar(  )
	composer.gotoScene( "registrar", { time==800, effect="crossFade" } )
end

local function gotoSobreJogo( )
	composer.gotoScene( "sobreJogo", { time==800, effect="crossFade" } )
end

-- -----------------------------------------------------------------------------------
-- funções dos eventos da cena
-- -----------------------------------------------------------------------------------

-- criar()
function scene:create( event )

	local sceneGroup = self.view

	local background = display.newRect( sceneGroup, display.contentCenterX, display.contentCenterY, 400, 1200 )

	local titulo = display.newText( sceneGroup, "Aritmus", display.contentCenterX, 70, native.systemFont, 50 )
	titulo:setFillColor( 0, 0, 0 )

	local bEntrar = display.newText( sceneGroup, "entrar", display.contentCenterX, 250, native.systemFont, 20 )
	bEntrar:setFillColor( 0, 0.2, 0.6 )

	bEntrar:addEventListener( "tap", gotoEntrar )

    local bRegistrar = display.newText( sceneGroup, "Registrar", display.contentCenterX, 300, native.systemFont, 20 )
    bRegistrar:setFillColor( 0.5, 0, 1 )

    bRegistrar:addEventListener( "tap", gotoRegistrar )

    local bSobreJogo = display.newText( sceneGroup, "Sobre Jogo", display.contentCenterX, 350, native.systemFont, 20 )
    bSobreJogo:setFillColor( 1, 0.3, 0.2 )

    bSobreJogo:addEventListener( "tap", gotoSobreJogo )

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
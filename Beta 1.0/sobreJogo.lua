local composer = require( "composer" )

local scene = composer.newScene()

local function gotoBackMenu(  )
	composer.gotoScene( "menu", { time=800, effect="crossFade" } )
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

	local texto1 = display.newText( sceneGroup, "Aqui vamos colocar", display.contentCenterX, 170, native.systemFont, 20 )
	texto1:setFillColor( 0.2, 0.8, 0.5 )
	local texto2 = display.newText( sceneGroup, "Tudo sobre o Aritmus e", display.contentCenterX, 200, native.systemFont, 20 )
	texto2:setFillColor( 0.2, 0.8, 0.5 )
	local texto3 = display.newText( sceneGroup, "Sobre nos desenvolvedores", display.contentCenterX, 230, native.systemFont, 20 )
	texto3:setFillColor( 0.2, 0.8, 0.5 )
	local texto4 = display.newText( sceneGroup, "E envolvidos... ", display.contentCenterX, 260, native.systemFont, 20 )
	texto4:setFillColor( 0.2, 0.8, 0.5 )

	local bVoltar = display.newText( sceneGroup, "Voltar", display.contentCenterX, display.contentCenterY + 200, native.systemFont, 20 )
	bVoltar:setFillColor( 1, 0.3, 0.2 )

	bVoltar:addEventListener( "tap", gotoBackMenu )

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
local composer = require( "composer" )

local scene = composer.newScene()

local nomeUsuario
local senha

local function gotoBackInicio(  )
	composer.gotoScene( "inicio", {time = 200, effect="crossFade"} )

end

local function gotoMenuJogo ()
	composer.gotoScene( "menuJogo", {time = 200, effect="crossFade"} )

end

--Função para a escrita 
local function textListener( event )
 
    if ( event.phase == "began" ) then
	        event.target.text = event.target.text -- Deixa o campo com o ultimo texto colocado pelo usuario
	
	end
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
	
	local tEmail = display.newText( sceneGroup, "Email :", display.contentCenterX-60, 170, native.systemFont, 20 )
	tEmail:setFillColor( 0, 0, 0 )


	local tSenha = display.newText( sceneGroup, "Senha :", display.contentCenterX-55, 240, native.systemFont, 20 )
	tSenha:setFillColor( 0, 0, 0 )

    nomeUsuario = native.newTextField( display.contentCenterX, 200, 180, 30 ) 
    nomeUsuario:addEventListener( "userInput", textListener )
	nomeUsuario.size= nil	

    senha = native.newTextField( display.contentCenterX, display.contentCenterY+30, 180, 30 )
    senha:addEventListener( "userInput", textListener )
	senha.isSecure = true
	senha.size = nil


	local bVoltar = display.newText( sceneGroup, "Voltar", display.contentCenterX - 50, display.contentCenterY + 240, native.systemFont, 20 )
	bVoltar:setFillColor( 0, 0, 0 )

	bVoltar:addEventListener( "tap", gotoBackInicio )

	local bConfirma = display.newText( sceneGroup, "Confirmar", display.contentCenterX + 50, display.contentCenterY + 240, native.systemFont, 20 )
	bConfirma:setFillColor( 0, 0, 0 )

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

	nomeUsuario.isVisible = true	--Torna visivel o campo assim que o usuario entrar na página
	senha.isVisible = true

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

	nomeUsuario.isVisible = false  --Torna invisivel o campo assim que o usuario trocar de página
	senha.isVisible = false

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

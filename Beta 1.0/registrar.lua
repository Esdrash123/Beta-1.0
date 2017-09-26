local composer = require( "composer" )

local scene = composer.newScene()

local email
local apelido
local senha
local confSenha

local function gotoBackInicio(  )
	composer.gotoScene( "inicio", {time = 200, effect="crossFade"} )
end

local function gotoEntrar ()
	composer.gotoScene( "entrar", {time = 200, effect="crossFade"} )
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

	local tEmail = display.newText( sceneGroup, "Email :", display.contentCenterX -85, 170, native.systemFont, 17 )
	tEmail:setFillColor( 0, 0, 0 )

    email = native.newTextField( display.contentCenterX-20, 200, 180, 30 ) 
    email:addEventListener( "userInput", textListener )
	email.size= nil
	
	local tApelido = display.newText( sceneGroup, "Apelido :", display.contentCenterX -75, 230, native.systemFont, 17 )
	tApelido:setFillColor( 0, 0, 0 )
	
    apelido = native.newTextField( display.contentCenterX-20, 260, 180, 30 ) 
    apelido:addEventListener( "userInput", textListener )
	apelido.size= nil

	local tSenha = display.newText( sceneGroup, "Senha :", display.contentCenterX -80, 290, native.systemFont, 17 )
	tSenha:setFillColor( 0, 0, 0 )


    senha = native.newTextField( display.contentCenterX-20, 320, 180, 30 ) 
    senha:addEventListener( "userInput", textListener )
	senha.isSecure = true
	senha.size= nil


	local tConfSenha = display.newText( sceneGroup, "Confirmar Senha :", display.contentCenterX -40, 350, native.systemFont, 17 )
	tConfSenha:setFillColor( 0, 0, 0 )

	confSenha = native.newTextField( display.contentCenterX-20, 380, 180, 30 ) 
    confSenha:addEventListener( "userInput", textListener )
	confSenha.isSecure = true
	confSenha.size= nil
		

	local bVoltar = display.newText( sceneGroup, "Voltar", display.contentCenterX - 50, display.contentCenterY + 240, native.systemFont, 20 )
	bVoltar:setFillColor( 0, 0, 0 )

	bVoltar:addEventListener( "tap", gotoBackInicio )

	local bConfirma = display.newText( sceneGroup, "Confirmar", display.contentCenterX + 50, display.contentCenterY + 240, native.systemFont, 20 )
	bConfirma:setFillColor( 0, 0, 0 )

	bConfirma:addEventListener( "tap", gotoEntrar )

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

	email.isVisible = true
	apelido.isVisible = true 		--Torna visivel o campo assim que o usuario entrar na página
	senha.isVisible = true
	confSenha.isVisible = true
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

	email.isVisible = false
	apelido.isVisible = false		--Torna invisivel o campo assim que o usuario trocar de página
	senha.isVisible = false
	confSenha.isVisible = false
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
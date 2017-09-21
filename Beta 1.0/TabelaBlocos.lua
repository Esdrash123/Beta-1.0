local fisica = require("physics")
   fisica.start()
local alturaDaBase = 500
local bloco= require("Bloco")
local base = display.newImage("base.png")
 base.x = display.contentCenterX
 base.y = display.contentCenterY + alturaDaBase * 0.5
   fisica.addBody(base,"static")

TabelaBlocos = {
    numeroColunas = 3,
    numeroLinhas = 3    
}

function TabelaBlocos:posicionarBlocos() 
 local blocoPosicionado
  for linha = 1, TabelaBlocos.numeroLinhas do  
    blocoPosicionado = bloco.criarBloco()
  return blocoPosicionado
  end
 end 




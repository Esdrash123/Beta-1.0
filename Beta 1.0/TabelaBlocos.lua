local fisica = require("physics")
   fisica.start()
local alturaDaBase = 500
local bloco= require("Bloco")

local parede = display.newImage("parede.png")
 parede.x = display.contentCenterX - 150
 parede.y = display.contentCenterY + 60
   fisica.addBody(parede,"static",{friction = 0.3})
local parede2 = display.newImage("parede.png")
 parede2.x = display.contentCenterX + 150
 parede2.y = display.contentCenterY + 60
   fisica.addBody(parede2,"static",{friction = 0.3})
local base = display.newImage("base.png")
 base.x = display.contentCenterX
 base.y = display.contentCenterY + alturaDaBase * 0.5
   fisica.addBody(base,"static",{friction = 0.3})

TabelaBlocos = {
   quantidadeBlocos = 1   
}

function TabelaBlocos:posicionarBlocos() 
 local blocoPosicionado
  for linha = 1, TabelaBlocos.quantidadeBlocos do  
    blocoPosicionado = bloco.criarBloco()

  end
 end 
return TabelaBlocos
 
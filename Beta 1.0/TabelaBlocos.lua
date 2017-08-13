

local bloco = require 'Bloco'

local tabelaBlocos = {}
local grupo = display.newGroup()

for linha = 1,bloco.numeroLinhas do 
   tabelaBlocos[linha] = {}

for coluna = 1,bloco.numeroColunas do

    local bloco1 = Bloco:criarBloco(bloco.tamanhoBloco * coluna - bloco.metadeBloco,bloco.tamanhoBloco * linha - bloco.metadeBloco )
    tabelaBlocos[linha][coluna] = bloco1
    grupo:insert(bloco1)
  
  end
end

grupo.x = display.contentCenterX - grupo.width * 0.5
grupo.y = display.contentCenterY - grupo.height * 0.5


Bloco = {

 tamanhoBloco = 50,
 metadeBloco = 25,
 numeroLinhas = 15,
 numeroColunas = 15,

 cores = {
    { r=50/255,      g=255/255,  b=140/255 },
    { r=237/255,    g=201/255,  b=81/255 },
    { r=100/255,    g=66/255,   b=103/255 },
    { r=205/255,    g=51/255,   b=63/255 }
  
   }
 }

 function Bloco:criarBloco(px,py)
    local bloco = display.newRect(px,py,Bloco.tamanhoBloco,Bloco.tamanhoBloco)
    bloco.value = math.random( #Bloco.cores )
    bloco:setFillColor(Bloco.cores[bloco.value].r,Bloco.cores[bloco.value].g,Bloco.cores[bloco.value].b)
    return bloco
end

return Bloco
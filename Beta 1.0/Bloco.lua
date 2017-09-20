Bloco={ 
  Tamanho = 40  
}

function Bloco:criarBloco()
math.randomseed(os.time())
valorBloco = math.random(1,5)

 if(valorBloco == 1) then bloco1 = display.newImage("bloco1.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco1.id=1
    return bloco1
    end
    if(valorBloco == 2) then bloco2 = display.newImage("bloco2.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco2.id=2
    return bloco2
    end
    if(valorBloco == 3) then bloco3 = display.newImage("bloco3.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco3.id=3
    return bloco3
    end
    if(valorBloco == 4) then bloco4 = display.newImage("bloco4.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco4.id=4
    return bloco4
    end
   if(valorBloco == 5) then bloco5 = display.newImage("bloco5.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco5.id=5
    return bloco5
    end
      
  end 
return Bloco




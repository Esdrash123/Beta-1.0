 local fisica = require("physics")
fisica.start()
Bloco={ 
  Tamanho = 40
}

function Bloco:criarBloco()
math.randomseed(os.time())
valorBloco = math.random(0,18)
    
    if(valorBloco == 0) then bloco0 = display.newImage("bloco0.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco0.id=0
    fisica.addBody (bloco0,"dynamic")
    return bloco0
    end
    if(valorBloco == 1) then bloco1 = display.newImage("bloco1.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco1.id=1
       fisica.addBody (bloco1,"dynamic")
    return bloco1
    end
    if(valorBloco == 2) then bloco2 = display.newImage("bloco2.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco2.id=2
       fisica.addBody (bloco2,"dynamic")
    return bloco2
    end
    if(valorBloco == 3) then bloco3 = display.newImage("bloco3.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco3.id=3
       fisica.addBody (bloco3,"dynamic")
    return bloco3
    end
    if(valorBloco == 4) then bloco4 = display.newImage("bloco4.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco4.id=4
       fisica.addBody (bloco4,"dynamic")
    return bloco4
    end
    if(valorBloco == 5) then bloco5 = display.newImage("bloco5.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco5.id=5
       fisica.addBody (bloco5,"dynamic")
    return bloco5
    end
    if(valorBloco == 6) then bloco6 = display.newImage("bloco6.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco6.id=6
       fisica.addBody (bloco6,"dynamic")
    return bloco6
    end
    if(valorBloco == 7) then bloco7 = display.newImage("bloco7.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco7.id=7
       fisica.addBody (bloco7,"dynamic")
    return bloco7
    end
    if(valorBloco == 8) then bloco8 = display.newImage("bloco8.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco8id=8
       fisica.addBody (bloco8,"dynamic")
    return bloco8
    end
    if(valorBloco == 9) then bloco9 = display.newImage("bloco9.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco9.id=9
       fisica.addBody (bloco9,"dynamic")
    return bloco9
    end
    if(valorBloco == 10) then bloco10 = display.newImage("bloco10.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco10.id=10
       fisica.addBody (bloco10,"dynamic")
    return bloco10
    end
    if(valorBloco == 11) then bloco11 = display.newImage("bloco11.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco11.id=11
       fisica.addBody (bloco11,"dynamic")
    return bloco11
    end
    if(valorBloco == 12) then bloco12 = display.newImage("bloco12.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco12.id=12
       fisica.addBody (bloco12,"dynamic")
    return bloco12
    end
    if(valorBloco == 13) then bloco13 = display.newImage("bloco13.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco13.id=13
       fisica.addBody (bloco13,"dynamic")
    return bloco13
    end
    if(valorBloco == 14) then bloco14 = display.newImage("bloco14.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco14.id=14
       fisica.addBody (bloco14,"dynamic")
    return bloco14
    end
   if(valorBloco == 15) then bloco15 = display.newImage("bloco15.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco15.id=15
       fisica.addBody (bloco15,"dynamic")
    return bloco15
    end
      if(valorBloco == 16) then bloco16 = display.newImage("bloco16.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco16.id=16
       fisica.addBody (bloco16,"dynamic")
    return bloco16
    end
    if(valorBloco == 17) then bloco17 = display.newImage("bloco17.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco17.id=17
       fisica.addBody (bloco17,"dynamic")
    return bloco17
    end
    if(valorBloco == 18) then bloco18 = display.newImage("bloco18.png",Bloco.Tamanho,Bloco.Tamanho) 
    bloco18.id=18
       fisica.addBody (bloco18,"dynamic")
    return bloco18
    end
   
  end 
return Bloco




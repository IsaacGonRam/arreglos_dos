def crea_tableros
  tablero = Array.new(3) { Array.new(3) }
  aleatorio = rand(2) 
  o =0, x =1
  if aleatorio == 0 
    o = 5
    x = 4 
  else 
    o = 4
    x = 5 
  end
  for i in  0..2
    for j in 0..2
      if o != 0 || x != 0 
        if aleatorio == 0 && o != 0
          tablero[i][j] = "O" 
          o -=1 
          aleatorio = rand(2)  
        elsif aleatorio == 1 && x != 0
          tablero[i][j] = "X"  
          x -=1
          aleatorio = rand(2) 
        elsif o == 0
          tablero[i][j]= "X"
        else
          tablero[i][j]= "O"
        end 
      printf "%-2s",tablero[i][j]
      puts if j == 2
      end
    end
  end
end

def arreglo_hash(array)
  arreglo_vacio =[]
  aux= []
  for i in 0..5
    for j in 0..4
      if i >0
        aux << [array[0][j],array[i][j]]  
      end
    end
    if aux.empty? == false
      arreglo_vacio << Hash[aux]
      aux=[]
    end
  end
  arreglo_vacio
end


table = [["Nombre","Edad","Genero", "Grupo", "Calificaciones"],
        ["Rodrigo García", 13, "Masculino", "Primero", [9, 9, 7, 6, 8] ],
        ["Fernanda Gonzalez", 12, "Femenino", "Tercero", [6, 9, 8, 6, 8]],
        ["Luis Perez", 13, "Masculino", "Primero", [8, 7, 7, 9, 8]],
        ["Ana Espinosa", 14, "Femenino", "Segundo", [9, 9, 6, 8, 8]],
        ["Pablo Moran", 11, "Masculino", "Segundo", [7, 8, 9, 9, 8]]]

abecedario = ('A'..'Z').last(20)
p que_sera = Array.new(3) { abecedario.pop(2) }
crea_tableros
p prueba = arreglo_hash(table)
p prueba[1]["Nombre"] == "Fernanda Gonzalez"
p prueba[4]["Calificaciones"] == [7, 8, 9, 9, 8]

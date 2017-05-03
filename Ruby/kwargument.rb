# Keyword Arguments

def hola(apodo:"",nivel:0,**equipo) # asi se defienen en ruby 2
  if nivel > 30
    puts "Maestro #{apodo}"
  elsif nivel < 30
    puts "Aventurero #{apodo}"
  else
    puts "intermedio #{apodo}"
  end
  puts equipo
end

hola(apodo:"Poud", nivel: 50, casco:"Obcidian", arma_d:"Escama", arma_i:"Azura Su")

# nota si quito un parametro el metodo utiliza el parametro aseignado por defecto
# el orden de los parametros no afecta el metodo, ellos tomaran los valores correspondientes
# tambien existe el splat para los keyword paramtrs, se definie : "**"
# para hacer requerido el parametro del metodo se modifica, por ejemplo def hola(apodo:,nivel:0,**equipo)
# ahora apodo es requerido (obligatorio)

# Ventajas: 1.- no requiere que el metodo y las llamadas del mismo esten en orden
#           2.- es mas explcito de lo que requiere el metodo para funcionar

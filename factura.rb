class FacturacionKleer
    def initialize
        
    end

    def calcular(cantidad, precio, estado)
        validarParam(cantidad, "cantidad")
        validarParam(precio, "precio unitario")
        validarParam(estado, "estado")

        puts "Sub Total            : "
        puts "Impuesto (Estado: AL): "
        puts "Descuento            : "
        puts "Total                : "
    end

    def validarParam(param, name)
        if(param == nil)
            puts "Debe completar el parametro #{name}"
            exit 1
        end
    end
end

fact = FacturacionKleer.new

fact.calcular(ARGV[0], ARGV[1], ARGV[2])
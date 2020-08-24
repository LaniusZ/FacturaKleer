class FacturacionKleer
    def initialize
        @imp= {nil: 0.0}
        @dto= {nil: 0.0}
    end

    def calcular(cantidad, precio, estado)
        validarParam(cantidad, "cantidad")
        validarMayorZero(cantidad, "cantidad")

        validarParam(precio, "precio unitario")
        validarParam(estado, "estado")


        puts "#{@imp[estado]}"

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

    def validarMayorZero(param, name)
        if(param > 0)
            puts "#{name} debe ser mayor que 0"
            exit 1
        end
    end
end

fact = FacturacionKleer.new

fact.calcular(ARGV[0], ARGV[1], ARGV[2])
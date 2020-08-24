class FacturacionKleer
    def initialize
        @imp= {
            nil: 0.0,
            "UT" => 6.85,
            "NV" => 8.0,
            "TX" => 6.25,
            "AL" => 4.0,
            "CA" => 8.25
        }

        @dto= {nil: 0.0}
    end

    def calcular(cantidad, precio, estado)
        validarParam(cantidad, "cantidad")
        validarMayorZero(cantidad.to_i, "cantidad")

        validarParam(precio, "precio unitario")
        validarMayorZero(precio.to_i, "precio unitario")

        validarParam(estado, "estado")        
        if(!@imp.include?(estado.upcase))
            puts "El estado ingresado no es valido"
            exit 1
        end

        subtotal = cantidad.to_i * precio.to_i
        current_imp = @imp[estado.upcase]

        total = subtotal + current_imp

        puts "Sub Total            : $#{subtotal}"
        puts "Impuesto (Estado: #{estado.upcase}): "
        puts "Descuento            : "
        puts "Total                : $#{total}"
    end

    def validarParam(param, name)
        if(param == nil)
            puts "Debe completar el parametro #{name}"
            exit 1
        end
    end

    def validarMayorZero(param, name)
        if(param < 1)
            puts "#{name} debe ser mayor que 0"
            exit 1
        end
    end
end

fact = FacturacionKleer.new

fact.calcular(ARGV[0], ARGV[1], ARGV[2])
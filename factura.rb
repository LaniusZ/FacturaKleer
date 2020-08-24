class FacturacionKleer
    def initialize
        @imp= {
            nil: 0.0,
            "UT" => 0.0685,
            "NV" => 0.080,
            "TX" => 0.0625,
            "AL" => 0.040,
            "CA" => 0.0825
        }
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
        current_imp = subtotal * @imp[estado.upcase]
        desc = calcularDesc(subtotal)
        total = subtotal + current_imp - desc

        puts "Sub Total            : $#{subtotal}"
        puts "Impuesto (Estado: #{estado.upcase}): $#{current_imp}"
        puts "Descuento            : $#{desc}"
        puts "Total                : $#{total}"
    end

    def calcularDesc(subtotal)
        if subtotal > 1000 and subtotal <= 5000
            dsc = 0.03
        elseif subtotal > 5000 and subtotal <= 7000
            dsc = 0.05
        elseif subtotal > 7000 and subtotal <= 10000
            dsc = 0.07
        elseif subtotal > 10000 and subtotal <= 50000
            dsc = 0.1
        elseif subtotal > 50000
            dsc = 0.15
        else
            dsc = 0.0
        end
        
        return dsc * subtotal
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
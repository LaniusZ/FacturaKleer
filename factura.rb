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
        dsc = 0.0
        case subtotal
            when 0 .. 999
                dsc = 0.0
            when 1000 .. 4999
                dsc = 0.03
            when 5000 .. 6999
                dsc = 0.05
            when 7000 .. 9999
                dsc = 0.07
            when 10000 .. 49999
                dsc = 0.1
            else
                dsc = 0.15
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
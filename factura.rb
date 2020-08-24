class FacturacionKleer
    def initialize
        
    end

    def calcular(cantidad, precio, estado)
        puts "Sub Total            : "
        puts "Impuesto (Estado: AL): "
        puts "Descuento            : "
        puts "Total                : "
    end
end

fact = FacturacionKleer.new

fact.calcular(ARGV[0], ARGV[1], ARGV[2])
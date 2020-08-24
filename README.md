# FacturaKleer

Aplicación de línea de comando que permita calcular los datos de facturación incluyendo impuestos y descuentos.
Debe poder ejecutarse con la línea de comando:

ruby factura.rb <cantidad> <precio unitario> <estado>

|    Impuesto    |   Descuentos  |
| Estado | Tasa  | Más de  |  %  |
|   UT   | 6.85% | $1,000  | 3%  |
|   NV   | 8.00% | $5,000  | 5%  |
|   TX   | 6.25% | $7,000  | 7%  |
|   AL   | 4.00% | $10,000 | 10% |
|   CA   | 8.25% | $50,000 | 15% |


# Ejemplo
ruby factura.rb 5 10 AL
(internamente)
5 * $10 = $50
AL(%4.0) = $2
DTO(%0) = $0
Total = $52

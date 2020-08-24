# FacturaKleer

Aplicación de línea de comando que permita calcular los datos de facturación incluyendo impuestos y descuentos.
Debe poder ejecutarse con la línea de comando:

ruby factura.rb <cantidad> <precio unitario> <estado>

<table borde="1">
  <thead>
    <tr>
      <th colspan="2">Impuesto</th>
      <th colspan="2">Descuentos</th>
    </tr>
    <tr>
      <th>Estado</th>
      <th>Tasa</th>
      <th>Más de</th>
      <th> %</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>UT</td>
      <td>6.85%</td>
      <td>$1,000</td>
      <td>3%</td>
    </tr>
    <tr>
      <td>NV</td>
      <td>8.00%</td>
      <td>$5,000</td>
      <td>5%</td>
    </tr>
    <tr>
      <td>TX</td>
      <td>6.25%</td>
      <td>$7,000</td>
      <td>7%</td>
    </tr>
    <tr>
      <td>AL/td>
      <td>4.00%/td>
      <td>$10,000/td>
      <td>10%</td>
    </tr>
    <tr>
      <td>CA/td>
      <td>8.25%/td>
      <td>$50,000/td>
      <td>15%</td>
    </tr>
  </tbody>    
</table>

# Ejemplo
ruby factura.rb 5 10 AL<br>
(internamente)<br>
5 * $10 = $50<br>
AL(%4.0) = $2<br>
DTO(%0) = $0<br>
Total = $52

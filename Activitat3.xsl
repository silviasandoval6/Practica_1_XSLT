<?xml version="1.0" encoding="UTF-8"?>
<!--Establecemos la versión de xml que usaremos y su código de caracteres-->
<!--Establecemos la versión de xsl a usar y le ponemos un nombre único al atributo xsl-->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<!--Empezamos el template paa mostrar el output de los datos del documento xml-->
<xsl:template match="/">
<!--Aquí empieza el código html-->
  <html>
  <body>
  <h2>Mi colección de CDs</h2>
  <!--Creamos la tabla con un borde para poner los datos del documento xml-->
  <table border="1">
    <!--Ponemos una fila con dos headings para establecer las columnas de la tabla-->
    <tr bgcolor="#9acd32">
      <th>Título</th>
      <th>Artista</th>
      <th>Precio</th>
      <th>País</th>
      <th>Compañía</th>
      <th>Año</th>

    </tr>
    <!--Para cada cd de dentro del catalogo se obtendrá la informacion de su título, artista, y demás elementos almacenados en el árbol del documento xml-->
    <xsl:for-each select="catalogo/cd">
      <!--Establecemos una condición para que solo se muestre la información cuyos CDs tengan un precio mayor que 10-->
      <xsl:if test="precio &gt; 10">
        <!--Seleccionamos la información usando value-of dentro de ésta fila-->
        <tr>
          <td><xsl:value-of select="titulo"/></td>
          <td><xsl:value-of select="artista"/></td>
          <td><xsl:value-of select="precio"/></td>
          <td><xsl:value-of select="pais"/></td>
          <td><xsl:value-of select="companyia"/></td>
          <td><xsl:value-of select="anyo"/></td>
        </tr>
      </xsl:if>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
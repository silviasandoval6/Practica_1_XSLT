<?xml version="1.0" encoding="UTF-8"?>
<!--Establecemos la versión de xml que usaremos y su código de caracteres-->
<!--Establecemos la versión de xsl a usar y le ponemos un nombre único al atributo xsl-->
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Empezamos el template paa mostrar el output de los datos del documento xml-->
<xsl:template match="/">
<!--Aquí empieza el código html-->
  <html>
  <!--Creamos el body con un estilizado inline css-->
  <body style="color:green; font-weight:bold; font-size:30px;">
  <!--Para cada "title" escribiremos el valor de su "text", escogiendo de esta manera el valor de los datos xml-->
    <xsl:for-each select="title">
      <xsl:value-of select="text"/>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
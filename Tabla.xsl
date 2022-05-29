<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" />
  <xsl:template match="/">
    <html>
      <head>
        <link rel="stylesheet" href="/Estilos.css" />
      </head>
      <body>
        <h1>Videojuegos</h1>
        <ul>
          <xsl:for-each select="tienda_videojuegos/cliente/nombre">
            <xsl:choose>
              <xsl:when test="id_cli = '123'">
                <li bgcolor="#808080">
                  <xsl:value-of select="tienda_videojuegos/cliente/nombre" />
                  Roberto
                </li>
              </xsl:when>
              <xsl:otherwise>
                <li bgcolor="#c0c0c0">
                  <xsl:value-of select="tienda_videojuegos/cliente/nombre" />
                  Juan Antonio
                </li>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:for-each>
        </ul>
        <table border="1">
          <tr bgcolor="#408279">
            <th>Codigo</th>
            <th>Nombre</th>
            <th>Fecha</th>
            <th>Precio</th>
            <th>Distribuidora</th>
            <th>Ventas</th>
          </tr>
          <xsl:for-each select="tienda_videojuegos/videojuego">
            <xsl:sort select="nombre" />
            <tr>
              <td>
                <xsl:value-of select="tienda_videojuegos/videojuego/codigo" />
              </td>
              <td>
                <xsl:value-of select="tienda_videojuegos/videojuego/nombre" />
              </td>
              <td>
                <xsl:value-of select="tienda_videojuegos/videojuego/fecha" />
              </td>
              <td>
                <xsl:value-of select="tienda_videojuegos/videojuego/precio" />
              </td>
              <td>
                <xsl:value-of select="tienda_videojuegos/videojuego/Distribuidora" />
              </td>
              <td>
                <xsl:value-of select="tienda_videojuegos/videojuego/Ventas" />
              </td>


            </tr>
            <xsl:if test="precio &lt; 35">
              <tr>
                <td>
                  <xsl:value-of select="tienda_videojuegos/videojuego/precio" />
                  Muy caro
                </td>
              </tr>
            </xsl:if>

          </xsl:for-each>


        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>ITE</title>
                <link rel="stylesheet" href="css/ite.css"/>
            </head>
            <body>
                <h1>ITE</h1>
                <h2><xsl:value-of select="//empresa"/></h2>
                <h2><xsl:value-of select="//telefono"/></h2>

                
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="ite/profesores/profesor">
                        <tr>
                            <td><xsl:value-of select="id"/></td>     
                            <td><xsl:value-of select="nombre"/></td>                        
                        </tr>
                    </xsl:for-each>
                </table>

                <table>
                    <tr>
                        <th>Código</th>
                        <th>Ciclo</th>
                        <th>Grado</th>
                        <th>Decreto</th>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr> 
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@ano"/></td>                     
                        </tr>
                    </xsl:for-each>
                </table>


                



            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
      <ite>
        <xsl:attribute name="empresa">
            <xsl:value-of select="/ite/empresa" />
        </xsl:attribute>
        <xsl:attribute name="telefono">
            <xsl:value-of select="/ite/telefono" />
        </xsl:attribute>
        <nombre>
            <xsl:value-of select="/ite/@nombre" />
        </nombre>
        <url>
            <xsl:value-of select="/ite/@web" />
        </url>
        <ciclos>
            <xsl:for-each select="ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="nombre" />
                    </xsl:attribute>
                    <xsl:attribute name="grado">
                        <xsl:value-of select="grado" />
                    </xsl:attribute>
                    <id><xsl:value-of select="@id" /></id>
                    <decretoTitulo><xsl:value-of select="decretoTitulo/@ano" /></decretoTitulo>
                </ciclo>
            </xsl:for-each>
        </ciclos>

        <directora>
            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/director/nombre" />
            </xsl:attribute>
            <xsl:attribute name="despacho">
                <xsl:value-of select="ite/director/despacho" />
            </xsl:attribute>
        </directora>

        <coordinador>
            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/jefe_estudios/nombre" />
            </xsl:attribute>
            <xsl:attribute name="despacho">
                <xsl:value-of select="ite/jefe_estudios/despacho" />
            </xsl:attribute>
        </coordinador>

        <profesores>
            <xsl:for-each select="ite/profesores/profesor">
                <profesor>
                    <xsl:attribute name="id">
                        <xsl:value-of select="id" />
                    </xsl:attribute>
                    <xsl:value-of select="nombre" />
                </profesor>
            </xsl:for-each>
        </profesores>
    </ite>
    </xsl:template>
</xsl:stylesheet>
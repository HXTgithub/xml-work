<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<rooms>
			<xsl:apply-templates select="/rooms/room"></xsl:apply-templates>
		</rooms>
    </xsl:template>
	<xsl:template match="room">
		<room>
			<xsl:attribute name="房间号">
				<xsl:value-of select="@roomid"/>
			</xsl:attribute>
			<xsl:attribute name="房间类型">
				<xsl:value-of select="@roomtype"/>
			</xsl:attribute>
		    <xsl:attribute name="床">
				<xsl:value-of select="bed"/>
		    </xsl:attribute>
			<xsl:attribute name="销量">
				<xsl:value-of select="sales"/>
		    </xsl:attribute>
		    <xsl:attribute name="人数">
				<xsl:value-of select="people"/>
		    </xsl:attribute>
		    <xsl:attribute name="价格">
				<xsl:value-of select="price"/>
		    </xsl:attribute>
			<xsl:attribute name="状态">
				<xsl:value-of select="condition"/>
			</xsl:attribute>
			<xsl:attribute name="图片">
				<xsl:value-of select="photo"/>
			</xsl:attribute>
		</room>
	</xsl:template>
</xsl:stylesheet>

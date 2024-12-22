<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<clients>
			<xsl:apply-templates select="/clients/client"/>
		</clients>
    </xsl:template>
	<xsl:template match="client">
		<client>
			<xsl:attribute name="客户名">
				<xsl:value-of select="clientname"/>
			</xsl:attribute>
			<xsl:attribute name="预订房间号">
				<xsl:value-of select="clientroom"/>
			</xsl:attribute>
			<xsl:attribute name="客户电话">
				<xsl:value-of select="clientphone"/>
			</xsl:attribute>
			<xsl:attribute name="住房日期">
				<xsl:value-of select="roomdate"/>
			</xsl:attribute>
			<xsl:attribute name="住房天数">
				<xsl:value-of select="roomtime"/>
			</xsl:attribute>
		</client>
	</xsl:template>
</xsl:stylesheet>

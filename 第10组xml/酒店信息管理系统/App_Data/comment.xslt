<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
        <Comments>
			<xsl:apply-templates select="/Comments/Comment"/>
        </Comments>
    </xsl:template>
	<xsl:template match="Comment">
		<Comment>
			<xsl:attribute name="评论">
				<xsl:value-of select="Text"/>
			</xsl:attribute>
			<xsl:attribute name="用户名">
				<xsl:value-of select="User"/>
			</xsl:attribute>
			<xsl:attribute name="评论时间">
				<xsl:value-of select="Time"/>
			</xsl:attribute>
		</Comment>
	</xsl:template>
</xsl:stylesheet>

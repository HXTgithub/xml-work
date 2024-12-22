<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">
		<users>
			<xsl:apply-templates select="/users/user"/>
		</users>
    </xsl:template>
	<xsl:template match="user">
		<user>
			<xsl:attribute name="用户名">
				<xsl:value-of select="username"/>
			</xsl:attribute>
			<xsl:attribute name="用户密码">
				<xsl:value-of select="usermima"/>
			</xsl:attribute>
			<xsl:attribute name="性别">
				<xsl:value-of select="sex"/>
			</xsl:attribute>
			<xsl:attribute name="密保问题">
				<xsl:value-of select="mibaoquestion"/>
			</xsl:attribute>
			<xsl:attribute name="密保答案">
				<xsl:value-of select="mibaoanser"/>
			</xsl:attribute>
			<xsl:attribute name="电话">
				<xsl:value-of select="tel"/>
			</xsl:attribute>
			<xsl:attribute name="邮箱">
				<xsl:value-of select="email"/>
			</xsl:attribute>
			<xsl:attribute name="生日">
				<xsl:value-of select="birthdate"/>
			</xsl:attribute>
			<xsl:attribute name="头像">
				<xsl:value-of select="photo"/>
			</xsl:attribute>
		</user>
	</xsl:template>
</xsl:stylesheet>

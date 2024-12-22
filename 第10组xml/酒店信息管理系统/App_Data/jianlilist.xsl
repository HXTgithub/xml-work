<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:template match="/">
<table class="list_text" cellspacing="5" style="width:650px; font-size:18px">
	<tbody>
		<tr class="list_head">
			<th>姓名</th>
			<th>性别</th>
			<th>出生日期</th>
			<th>学历</th>
			<th>毕业学校</th>
			<th>工作年限</th>
		</tr>
		<xsl:for-each select="简历/个人简历/基本信息">
		<tr>
			<td><a>
               <xsl:attribute name="href">jianli_Detail.aspx?id=<xsl:value-of select="../@id"/></xsl:attribute>
               <xsl:value-of select="姓名"></xsl:value-of>			
			</a></td>
			<td align="center">
			<xsl:value-of select="性别"></xsl:value-of>
			</td>
				<td align="center">
			<xsl:value-of select="出生日期"></xsl:value-of>
			</td>
				<td align="center">
			<xsl:value-of select="学历"></xsl:value-of>
			</td>
				<td align="center">
			<xsl:value-of select="毕业学校"></xsl:value-of>
			</td>
				<td align="center">
			<xsl:value-of select="工作年限"></xsl:value-of>
			</td>
		</tr>
		
		</xsl:for-each>
	</tbody>
</table>
</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
 <!-- 根模板-->
    <xsl:param name="gid">       
    </xsl:param>
  
 <xsl:template match="/">
               <h2 align="center">个人档案</h2>
               <xsl:apply-templates select="简历/个人简历[@id=$gid]"/>          
 </xsl:template>
 
 <!--个人简历模板-->
 <xsl:template match="个人简历">
  <xsl:apply-templates select="./基本信息"/>
  <br/>
  <xsl:apply-templates select="./教育"/>
  <br/>
  <xsl:apply-templates select="./工作"/>
  <br/>
  <xsl:apply-templates select="./自我评价"/>
 </xsl:template>
 
 <!--基本信息模板-->
 <xsl:template match="基本信息">
  <table align="center"  width="800" border="0" style="font-size:16px" >
   <tbody>
    <tr>
     <th colspan="7" bgcolor="#CAE1FF" align="left">基本信息</th>
    </tr>
    <tr >
     <td width="35">姓名:</td>
     <td width="50"><xsl:value-of select="姓名"/></td>
     <td width="35">性别:</td>
     <td width="40"><xsl:value-of select="性别"/></td>
     <td width="35">籍贯:</td>
     <td width="80"><xsl:value-of select="籍贯"/></td>
     <td width="150" rowspan="4">
      <img width="120" height="150">
      <xsl:attribute name="src"><xsl:value-of select="照片" /></xsl:attribute>
      </img>      
      </td>
     </tr>
    <tr>
     <td width="60">出生日期:</td>
     <td><xsl:value-of select="出生日期"/></td>
     <td width="60">婚姻状况:</td>
     <td><xsl:value-of select="婚姻状况"/></td>
     <td width="60">健康状况:</td>
     <td><xsl:value-of select="健康状况"/></td>
    </tr>
    <tr>
     <td>学历:</td>
     <td><xsl:value-of select="学历"/></td>
     <td>工作年限:</td>
     <td><xsl:value-of select="工作年限"/></td>
     <td>毕业学校:</td>
     <td><xsl:value-of select="毕业学校"/></td>
    </tr>
    <tr>
     <td>联系电话:</td>
     <td><xsl:value-of select="联系电话"/></td>
     <td>E-Mail:</td>
     <td><xsl:value-of select="EMail"/></td>
     <td>联系地址:</td>
     <td><xsl:value-of select="联系地址"/></td>
    </tr>
   </tbody>
  </table>
 </xsl:template>
 <!--教育模板-->
 <xsl:template match="教育">
  <table width="800" align="center" style="font-size:18px">
   <tbody>
    <tr>
     <th colspan="5" bgcolor="#CAE1FF" align="left">教育经历</th>
    </tr>  
    <tr>
     <td>开始时间</td>
     <td>终止时间</td>
     <td>院校名称</td>
     <td>专业</td>
     <td>学历</td>
    </tr>
    <xsl:apply-templates select="./教育经历"/>
   </tbody>
  </table>
 </xsl:template>
 <!--教育经历模板-->
 <xsl:template match="教育经历">
  <tr>
   <td><xsl:value-of select="开始时间"/></td>
   <td><xsl:value-of select="终止时间"/></td>
   <td><xsl:value-of select="院校名称"/></td>
   <td><xsl:value-of select="专业"/></td>
   <td><xsl:value-of select="学历"/></td>
  </tr>
 </xsl:template>
 <!--工作模板-->
 <xsl:template match="工作">
  <table width="800" align="center" style="font-size:18px">
   <tbody>
    <tr>
     <th colspan="5" bgcolor="#CAE1FF" align="left">工作经历</th>
    </tr>
    <tr>
     <td width="150">开始时间</td>
     <td width="150">终止时间</td>
     <td width="250">公司名称</td>
     <td width="150">职位</td>
     <td width="100">职位描述</td>
    </tr>
    <xsl:apply-templates select="./工作经历"/>
   </tbody>
  </table>
 </xsl:template>
 <!--工作经历模板-->
 <xsl:template match="工作经历">
  <tr>
   <td><xsl:value-of select="开始时间"/></td>
   <td><xsl:value-of select="终止时间"/></td>
   <td><xsl:value-of select="公司名称"/></td>
   <td ><xsl:value-of select="职位"/></td>
   <td width="350"><xsl:value-of select="职位描述"/></td>
  </tr>
 </xsl:template>
 <!--自我评价模板-->
 <xsl:template match="自我评价">
  <table width="800" align="center" style="font-size:18px">
   <tbody>
    <tr>
     <th bgcolor="#CAE1FF" align="left">自我评价</th>
    </tr>
    <tr>
     <td><xsl:value-of select="."/></td>
    </tr>
   </tbody>
  </table>
 </xsl:template>
</xsl:stylesheet>

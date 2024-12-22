<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
 <!-- ��ģ��-->
    <xsl:param name="gid">       
    </xsl:param>
  
 <xsl:template match="/">
               <h2 align="center">���˵���</h2>
               <xsl:apply-templates select="����/���˼���[@id=$gid]"/>          
 </xsl:template>
 
 <!--���˼���ģ��-->
 <xsl:template match="���˼���">
  <xsl:apply-templates select="./������Ϣ"/>
  <br/>
  <xsl:apply-templates select="./����"/>
  <br/>
  <xsl:apply-templates select="./����"/>
  <br/>
  <xsl:apply-templates select="./��������"/>
 </xsl:template>
 
 <!--������Ϣģ��-->
 <xsl:template match="������Ϣ">
  <table align="center"  width="800" border="0" style="font-size:16px" >
   <tbody>
    <tr>
     <th colspan="7" bgcolor="#CAE1FF" align="left">������Ϣ</th>
    </tr>
    <tr >
     <td width="35">����:</td>
     <td width="50"><xsl:value-of select="����"/></td>
     <td width="35">�Ա�:</td>
     <td width="40"><xsl:value-of select="�Ա�"/></td>
     <td width="35">����:</td>
     <td width="80"><xsl:value-of select="����"/></td>
     <td width="150" rowspan="4">
      <img width="120" height="150">
      <xsl:attribute name="src"><xsl:value-of select="��Ƭ" /></xsl:attribute>
      </img>      
      </td>
     </tr>
    <tr>
     <td width="60">��������:</td>
     <td><xsl:value-of select="��������"/></td>
     <td width="60">����״��:</td>
     <td><xsl:value-of select="����״��"/></td>
     <td width="60">����״��:</td>
     <td><xsl:value-of select="����״��"/></td>
    </tr>
    <tr>
     <td>ѧ��:</td>
     <td><xsl:value-of select="ѧ��"/></td>
     <td>��������:</td>
     <td><xsl:value-of select="��������"/></td>
     <td>��ҵѧУ:</td>
     <td><xsl:value-of select="��ҵѧУ"/></td>
    </tr>
    <tr>
     <td>��ϵ�绰:</td>
     <td><xsl:value-of select="��ϵ�绰"/></td>
     <td>E-Mail:</td>
     <td><xsl:value-of select="EMail"/></td>
     <td>��ϵ��ַ:</td>
     <td><xsl:value-of select="��ϵ��ַ"/></td>
    </tr>
   </tbody>
  </table>
 </xsl:template>
 <!--����ģ��-->
 <xsl:template match="����">
  <table width="800" align="center" style="font-size:18px">
   <tbody>
    <tr>
     <th colspan="5" bgcolor="#CAE1FF" align="left">��������</th>
    </tr>  
    <tr>
     <td>��ʼʱ��</td>
     <td>��ֹʱ��</td>
     <td>ԺУ����</td>
     <td>רҵ</td>
     <td>ѧ��</td>
    </tr>
    <xsl:apply-templates select="./��������"/>
   </tbody>
  </table>
 </xsl:template>
 <!--��������ģ��-->
 <xsl:template match="��������">
  <tr>
   <td><xsl:value-of select="��ʼʱ��"/></td>
   <td><xsl:value-of select="��ֹʱ��"/></td>
   <td><xsl:value-of select="ԺУ����"/></td>
   <td><xsl:value-of select="רҵ"/></td>
   <td><xsl:value-of select="ѧ��"/></td>
  </tr>
 </xsl:template>
 <!--����ģ��-->
 <xsl:template match="����">
  <table width="800" align="center" style="font-size:18px">
   <tbody>
    <tr>
     <th colspan="5" bgcolor="#CAE1FF" align="left">��������</th>
    </tr>
    <tr>
     <td width="150">��ʼʱ��</td>
     <td width="150">��ֹʱ��</td>
     <td width="250">��˾����</td>
     <td width="150">ְλ</td>
     <td width="100">ְλ����</td>
    </tr>
    <xsl:apply-templates select="./��������"/>
   </tbody>
  </table>
 </xsl:template>
 <!--��������ģ��-->
 <xsl:template match="��������">
  <tr>
   <td><xsl:value-of select="��ʼʱ��"/></td>
   <td><xsl:value-of select="��ֹʱ��"/></td>
   <td><xsl:value-of select="��˾����"/></td>
   <td ><xsl:value-of select="ְλ"/></td>
   <td width="350"><xsl:value-of select="ְλ����"/></td>
  </tr>
 </xsl:template>
 <!--��������ģ��-->
 <xsl:template match="��������">
  <table width="800" align="center" style="font-size:18px">
   <tbody>
    <tr>
     <th bgcolor="#CAE1FF" align="left">��������</th>
    </tr>
    <tr>
     <td><xsl:value-of select="."/></td>
    </tr>
   </tbody>
  </table>
 </xsl:template>
</xsl:stylesheet>

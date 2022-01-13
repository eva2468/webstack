<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<!-- TODO: Auto-generated template -->
		<html>
		<head>
		</head>
		<body bgcolor="">
		<h1 style="text-align:center"><u>Employee Management System</u></h1>
		<table border="4" align="center" bgcolor="white">
		<tr>
		<th>Name</th>
		<th>Age</th>
		<th>Salary</th>
		<th>Email</th>
		<th>Mobile NO</th>
		<th>Designation</th>
		<th>Promotion</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<xsl:if test="Emp_Salary &gt; 20000">
		<tr>
		<td>
		<xsl:value-of select="Emp_ID"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_Name"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_Age"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_Salary"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_email"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_phonenum"></xsl:value-of>
		</td>
		<td>
		<xsl:value-of select="Emp_designation"></xsl:value-of>
		</td>
		<td>
		<xsl:choose>
		                        		<xsl:when test="Emp_Age &gt; 50">Associate Project manager</xsl:when>
									    <xsl:when test="Emp_Age &gt;40 and Emp_Age &lt;49">Team Leader</xsl:when>
									    <xsl:otherwise>Developer</xsl:otherwise>
							        </xsl:choose>
		</td>
		</tr>
		</xsl:if>
		</xsl:for-each>
		
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
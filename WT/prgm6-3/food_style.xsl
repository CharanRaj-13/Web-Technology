
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
<title>Food Collection Details</title>
</head>
<body>
<h1>Food Collection Details</h1>
<table border="1">
<tr>
<th>Food Name</th>
<th>Quantity</th>
<th>Donor</th>
</tr>
<xsl:for-each select="foodCollection/food">
<tr>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="quantity"/></td>
<td><xsl:value-of select="donor"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
<xsl:template>
</xsl:stylesheet>

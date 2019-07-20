<?xml version="1.0"?> 
<!-- when using xsl:stylesheet, don't put the encoding attribute above in xml tag -->
<!-- xsl:styelsheet is used to apply value of xml on html element -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- xsl:template is necessary to apply some work on html by getting data from xml -->
    <xsl:template match="/">
            <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                <title>Document</title>
            </head>
            <body>

            <!-- xsl:for-each tag is used to access all the possible tags from xml -->
                <xsl:for-each select="/items/item">
                <!-- xsl:sort tag is used to sort the data based upon tag name or attribute value -->
                    <xsl:sort select="heading" order="desending"/>
                    <h1>
                    <!-- xsl:attribute is used to apply attribute on html element -->
                        <xsl:attribute name="id">
                        <!-- xsl:value-of tag is used to get the value from xml content and put inside the html tag -->
                            <xsl:value-of select="heading" />
                        </xsl:attribute>
                    </h1>
                    <h1>
                    <!-- xsl:if tag is used to check a perticular condition based upon xml -->
                        <xsl:if test="heading[@id='dept']">
    
                            <xsl:value-of select="heading" /> 
                            <!-- xsl:text is used to put some text  -->
                            <xsl:text> ... </xsl:text>
                        </xsl:if>
                        <!-- xsl:choose works same like if else if -->
                        <xsl:choose>
                        <!-- xsl:when is a party of choose and is used to check a condition -->
                            <xsl:when test="heading[@id='dept3']">
                                <xsl:value-of select="heading" /> 
                                <xsl:text> ... </xsl:text>
                            </xsl:when>
                            <!-- when statement can be more than one like if, else if , else if and so on -->
                            <!-- otherwise statement works like else in if-else clause -->
                            <xsl:otherwise>
                                <xsl:value-of select="heading" /> 
                                <xsl:text> ... </xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </h1>
                    <h2>
                        <xsl:value-of select="p"/>
                    </h2>
                </xsl:for-each>
            </body>
            </html>
    </xsl:template>
</xsl:stylesheet>
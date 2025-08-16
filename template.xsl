<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
  <xsl:template match="/">

    <html>
      <head>
        <title><xsl:value-of select="page/title"/></title>

        <meta name="description">
          <xsl:attribute name="content">
            <xsl:value-of select="page/description"/>
          </xsl:attribute>
        </meta>

        <meta name="keywords">
          <xsl:attribute name="content">
            <xsl:value-of select="page/keywords"/>
          </xsl:attribute>
        </meta>

        <link rel="canonical">
          <xsl:attribute name="href">
            <xsl:value-of select="page/canonical"/>
          </xsl:attribute>
        </link>
      </head>

      <body>
        <h1><xsl:value-of select="page/title"/></h1>
                
        <div>
          <xsl:value-of select="page/content" disable-output-escaping="yes"/>
        </div>

      </body>
    </html>

  </xsl:template>

</xsl:stylesheet>
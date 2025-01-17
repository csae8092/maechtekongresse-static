<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:local="http://dse-static.foo.bar"
    version="2.0" exclude-result-prefixes="xsl tei xs local">
    
    <xsl:output encoding="UTF-8" media-type="text/html" method="html" version="5.0" indent="yes" omit-xml-declaration="yes"/>
    
    
    <xsl:import href="partials/html_navbar.xsl"/>
    <xsl:import href="partials/html_head.xsl"/>
    <xsl:import href="partials/html_footer.xsl"/>
    <xsl:import href="partials/tabulator_dl_buttons.xsl"/>
    <xsl:import href="partials/tabulator_js.xsl"/>


    <xsl:template match="/">
        <xsl:variable name="doc_title" select="'Inhalt'"/>


    
        <html class="h-100">
    
            <head>
                <xsl:call-template name="html_head">
                    <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
                </xsl:call-template>
            </head>
            
            <body class="d-flex flex-column h-100">
            <xsl:call-template name="nav_bar"/>
                <main>
                    <div class="container">
                        <h1>Inhaltsverzeichnis</h1>
                        <table class="table" id="myTable">
                            <thead>
                                <tr>
                                    <th scope="col" style="width:20px;" tabulator-formatter="html" tabulator-headerSort="false" tabulator-download="false">#</th>
                                    <th scope="col" style="width:40px;" tabulator-headerFilter="input">Sigle</th>
                                    <th scope="col" tabulator-headerFilter="input">Titel</th>
                                    <th scope="col" tabulator-headerFilter="input">Weitere Dokumente</th>
                                    <th scope="col" tabulator-headerFilter="input">Datum</th>
                                    <th scope="col" tabulator-headerFilter="input">Dateiname</th>
                                </tr>
                            </thead>
                            <tbody>
                                <xsl:for-each
                                    select="collection('../data/editions?select=*.xml')//tei:TEI">
                                    <xsl:variable name="full_path">
                                        <xsl:value-of select="document-uri(/)"/>
                                    </xsl:variable>
                                    <tr>
                                        <td>
                                            <a><xsl:attribute name="href"><xsl:value-of select="replace(tokenize($full_path, '/')[last()], '.xml', '.html')"/></xsl:attribute><i class="bi bi-link-45deg"/></a>
                                        </td>
                                        <td><xsl:value-of select="//tei:publicationStmt/tei:idno[1]//translate(text(),'_',' ')"/></td>
                                        <td><xsl:value-of select=".//tei:titleStmt/tei:title[@type='main']/text()"/></td>
                                        <td>
                                            <ul><xsl:for-each select=".//tei:msDesc[position()>1]//tei:title">
                                                <li><xsl:value-of select="./text()"/></li>
                                            </xsl:for-each></ul>
                                        </td>
                                        <td>
                                            <xsl:choose>
                                                <xsl:when test=".//tei:msDesc[1]//tei:origin[1]/tei:date[1]/@when"><xsl:value-of select="//tei:msDesc[1]//tei:origin[1]/tei:date[1]/@when"/></xsl:when>
                                                <xsl:when test="//tei:msDesc[1]//tei:origin[1]/tei:date[1]"><xsl:value-of select="//tei:msDesc[1]//tei:origin[1]/tei:date[1]"/></xsl:when>
                                                <xsl:otherwise><xsl:value-of select="//tei:editionStmt/tei:edition/tei:date[1]/text()"/></xsl:otherwise>
                                            </xsl:choose>
                                        </td>
                                        <td><xsl:value-of select="tokenize($full_path, '/')[last()]"/></td>
                                    </tr>
                                </xsl:for-each>
                            </tbody>
                        </table>
                        <xsl:call-template name="tabulator_dl_buttons"/>
                    </div>
                </main>
                <xsl:call-template name="html_footer"/>
                <xsl:call-template name="tabulator_js">
                    <xsl:with-param name="config" select="'configTOC'"/>
                </xsl:call-template>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="#all" version="2.0">
    <xsl:template match="/" name="nav_bar">
        <header>
            <nav class="navbar navbar-expand-lg bg-body-tertiary">
                <div class="container-fluid">
                    <a class="navbar-brand" href="index.html">
                        <xsl:value-of select="$project_short_title"/>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Projekt</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="about.html">Home</a></li>
                                    <li><a class="dropdown-item" href="imprint.html">Impressum</a></li>
                                </ul>
                        	</li>
                            <li class="nav-item dropdown disabled">
                                <a class="nav-link dropdown-toggle" href="toc.html" role="button" data-bs-toggle="dropdown" aria-expanded="false">Inhaltsverzeichnis</a>
                                <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="Einleitung.html">Einleitung</a></li>
                                <li><hr class="dropdown-divider"/></li>
                                <li><a class="dropdown-item" href="toc.html?filterstring=A">Dokumente: Kongress von Aachen 1818</a></li>
                                <li><a class="dropdown-item" href="toc.html?filterstring=T">Dokumente: Kongress von Troppau/Opava 1820</a></li>
                                <li><a class="dropdown-item" href="toc.html?filterstring=L">Dokumente: Kongress von Laibach/Ljubljana 1821</a></li>
                                <li><a class="dropdown-item" href="toc.html?filterstring=V">Dokumente: Kongress von Verona 1822</a></li>
                                <li><hr class="dropdown-divider"/></li>
                                <li><a class="dropdown-item" href="BestandsbeschreibungAachen.html">Bestandsbeschreibung Kongress von Aachen 1818</a></li>
                                <li><a class="dropdown-item" href="BestandsbeschreibungTroppau.html">Bestandsbeschreibung Kongress von Troppau/Opava 1820</a></li>
                                <li><a class="dropdown-item" href="BestandsbeschreibungLaibach.html">Bestandsbeschreibung Kongress von Laibach/Ljubljana 1821</a></li>
                                <li><a class="dropdown-item" href="BestandsbeschreibungVerona.html">Bestandsbeschreibung Kongress von Verona 1822</a></li>
                                <li><hr class="dropdown-divider"/></li>
                                <!--
                                <li class="submenu dropdown-menu">
                                    <a href="../pages/regesten.html">Regesten »</a>
                                    <ul class="dropdown-menu">
                                        <li><a class="dropdown-item" href="../pages/regesten.html?collection=editions&amp;filterstring=A">Kongress von Aachen 1818</a></li>
                                        <li><a class="dropdown-item" href="../pages/regesten.html?collection=editions&amp;filterstring=T">Kongress von Troppau/Opava 1820</a></li>
                                        <li><a class="dropdown-item" href="../pages/regesten.html?collection=editions&amp;filterstring=L">Kongress von Laibach/Ljubljana 1821</a></li>
                                        <li><a class="dropdown-item" href="../pages/regesten.html?collection=editions&amp;filterstring=V">Kongress von Verona 1822</a></li>
                                    </ul>
                                </li>-->
                                        <!-- <li><a class="dropdown-item" href="Einleitung.html">Einleitung</a></li> -->
                                        <li><a class="dropdown-item" href="Einleitung_kurz.html">Kurzeinleitung</a></li>
                                        <li><a class="dropdown-item" href="Editionsrichtlinien.html">Editionsrichtlinien</a></li>
                                        <li><a class="dropdown-item" href="about.html">Zur technischen Umsetzung</a></li>
                                        <li><a class="dropdown-item" href="Danksagung.html">Danksagung</a></li>
                                    
                                
                            </ul>
                        </li>
                        <li class="nav-item dropdown disabled">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Register</a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="listperson.html">Personen</a></li>
                                    <li><a class="dropdown-item" href="listplace.html">Orte</a></li>
                                    <li><a class="dropdown-item" href="listorg.html">Organisationen</a></li>
                                </ul>
                        </li>
                        <li class="nav-item">
                                <a title="Suche" class="nav-link" href="search.html">Suche</a>
                        </li>
                    </ul>
                </div>
                </div>
            </nav>
        </header>
    </xsl:template>
</xsl:stylesheet>
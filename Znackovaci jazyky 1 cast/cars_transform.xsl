<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

  <html>

    <head>
      <title>
        Julia's car rental collection
      </title>
      <link rel="stylesheet" href="style.css"/>
    </head>

    <body>
      <h1>Plný popis udaje aut!!!</h1>
      <xsl:for-each select="imperial_cars/pronajem_aut">
      <h2><xsl:value-of select="auta/automobil/@id"/></h2>
      <h3>Technicke udaje cislo: <xsl:value-of select="auta/automobil/technicke_udaje/@id"/></h3>
      </xsl:for-each>
      <table border="1">
        <thead>
          <tr>
          <th bgcolor="#9acd32">
            Značka
          </th>
          <th bgcolor="#9acd32">
            Model
          </th>
          <th bgcolor="#9acd32">
            Datum první registrace
          </th>
          <th bgcolor="#9acd32">
            Kategorie
          </th>
          <th bgcolor="#9acd32">
            Rok vyroby
          </th>
          <th bgcolor="#9acd32">
            Cena
          </th>
          <th bgcolor="#9acd32">
            Převodovka
          </th>
          <th bgcolor="#9acd32">
            Počet najetých km
          </th>
          <th bgcolor="#9acd32">
            Vykon
          </th>
          <th bgcolor="#9acd32">
            Objem
          </th>
        </tr>
      </thead>
          <tbody>
          <xsl:for-each select="imperial_cars/pronajem_aut">

              <xsl:for-each select="auta/automobil/technicke_udaje">
                  <tr>
                      <td><xsl:value-of select="znacka"/></td>
                      <td><xsl:value-of select="model"/></td>
                      <td><xsl:value-of select="datum_prvni_registrace/mesic"/>/<xsl:value-of select="datum_prvni_registrace/rok"/></td>
                      <td><xsl:value-of select="kategorie"/></td>
                      <td><xsl:value-of select="rok_vyroby"/></td>
                      <td><xsl:value-of select="cena"/></td>
                      <td><xsl:value-of select="prevodovka"/></td>
                      <td><xsl:value-of select="pocet_najetych_km"/></td>
                      <td><xsl:value-of select="vykon"/></td>
                      <td><xsl:value-of select="objem"/></td>
                  </tr>
              </xsl:for-each>
          </xsl:for-each>
          </tbody>
      </table>

        <xsl:for-each select="imperial_cars/pronajem_aut/auta/automobil">
        <h2>Automobil (<xsl:value-of select="@id"/>)</h2>
        <h3>Vybava cislo: <xsl:value-of select="vybava/@id"/></h3>
          <xsl:for-each select="vybava">
              <p><xsl:value-of select="komfort_a_interier"/></p>
          </xsl:for-each>

      <h3>Bezpečnost cislo: <xsl:value-of select="bezpecnost/@id"/></h3>
          <xsl:for-each select="bezpecnost">
              <p><xsl:value-of select="popis"/></p>
          </xsl:for-each>

      <h3>Media cislo: <xsl:value-of select="media/@id"/></h3>
        <xsl:for-each select="media">
              <p><xsl:value-of select="popis"/></p>
        </xsl:for-each>

      <h3>Technologie a životní prostředí cislo: <xsl:value-of select="technologie_a_zivotni_prostredi/@id"/></h3>
        <xsl:for-each select="technologie_a_zivotni_prostredi">
            <p><xsl:value-of select="popis"/></p>
        </xsl:for-each>

      <h3>Exteriér cislo: <xsl:value-of select="exterier/@id"/></h3>
        <xsl:for-each select="exterier">
              <p><xsl:value-of select="popis"/></p>
        </xsl:for-each>

      <h3>Další funkce cislo: <xsl:value-of select="dalsi_funkce/@id"/></h3>
        <xsl:for-each select="dalsi_funkce">
              <p><xsl:value-of select="popis"/></p>
        </xsl:for-each>
        </xsl:for-each>
  </body>

  </html>
</xsl:template>
</xsl:stylesheet>

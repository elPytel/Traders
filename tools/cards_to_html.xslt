<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:param name="title" select="'Obchodnici - Cards'"/>
  <xsl:param name="mode" select="'front'"/>
  <xsl:param name="colorMode" select="'color'"/>

  <xsl:variable name="cardsPerPage" select="9"/>

  <xsl:template match="/cards">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title><xsl:value-of select="$title"/></title>
        <style>
          @page { size: A4; margin: 10mm; }
          html, body { margin: 0; padding: 0; }
          body { font-family: "Georgia", serif; color: #111; background: #eee; }
          @media print { body { background: #fff; } }

          .page { page-break-after: always; }
          .page:last-child { page-break-after: auto; }

          .sheet {
            width: 100%;
            display: grid;
            grid-template-columns: repeat(3, 63mm);
            grid-template-rows: repeat(3, 88mm);
            justify-content: center;
            align-content: start;
          }

          /* Base poker card container */
          .card {
            position: relative;
            box-sizing: border-box;
            width: 63mm;
            height: 88mm;
            border: 0.35mm solid #111;
            border-radius: 2mm;
            overflow: hidden;
            display: flex;
            flex-direction: column;
            background: #f4f1ea;
          }

          /* Cut marks using the Gnarl pseudo-element trick */
          .card:before, .card:after {
            content: ""; position: absolute; left: -2mm; top: -2mm; right: -2mm; bottom: -2mm; pointer-events: none;
            background:
              linear-gradient(#111,#111) left 0 top 0 / 3mm 0.25mm no-repeat,
              linear-gradient(#111,#111) left 0 top 0 / 0.25mm 3mm no-repeat,
              linear-gradient(#111,#111) right 0 top 0 / 3mm 0.25mm no-repeat,
              linear-gradient(#111,#111) right 0 top 0 / 0.25mm 3mm no-repeat,
              linear-gradient(#111,#111) left 0 bottom 0 / 3mm 0.25mm no-repeat,
              linear-gradient(#111,#111) left 0 bottom 0 / 0.25mm 3mm no-repeat,
              linear-gradient(#111,#111) right 0 bottom 0 / 3mm 0.25mm no-repeat,
              linear-gradient(#111,#111) right 0 bottom 0 / 0.25mm 3mm no-repeat;
            opacity: 0.65;
            z-index: 10;
          }

          /* Half-art image container */
          .card-art {
            width: 100%;
            height: 40mm;
            background-size: cover;
            background-position: center;
            position: relative;
            border-bottom: 0.5mm solid #111;
            background-color: #333;
          }

          /* Era specific colors applied to titles */
          .era-1 .card-title { background: rgba(101, 67, 33, 0.85); }
          .era-2 .card-title { background: rgba(60, 64, 72, 0.85); }
          .era-3 .card-title { background: rgba(139, 0, 0, 0.85); }

          /* Overlay title */
          .card-title {
            position: absolute;
            top: 0; left: 0; width: 100%;
            color: #fff;
            padding: 2mm 3mm;
            box-sizing: border-box;
          }
          
          .title-main { font-weight: bold; font-size: 4.5mm; line-height: 1.1; }
          .title-sub { font-size: 3mm; opacity: 0.9; margin-top: 0.5mm; font-style: italic; }

          /* Text body */
          .card-body {
            padding: 3mm;
            font-size: 3.4mm;
            line-height: 1.3;
            text-align: center;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
          }

          .card-desc {
            margin-bottom: 3mm;
            flex-grow: 1;
          }

          /* Module Stats Bar */
          .stats-bar {
            display: flex;
            width: 100%;
            justify-content: space-around;
            background: #e0dcd3;
            border-top: 0.5mm solid #111;
            padding: 2mm 0;
            font-weight: bold;
            font-size: 3.5mm;
          }

          .stat { display: flex; flex-direction: column; align-items: center; }
          .stat.power { color: #2e7d32; }
          .stat.weight { color: #c62828; }
          .stat.capacity { color: #1565c0; }
          .stat span { font-size: 2.5mm; color: #111; font-weight: normal; }

          /* Quest details */
          .quest-details {
            width: 100%;
            text-align: left;
            font-size: 3.5mm;
            background: #fff;
            border: 0.5mm solid #111;
            padding: 2mm;
            box-sizing: border-box;
            border-radius: 1mm;
          }
          
          .quest-req { font-weight: bold; font-size: 4mm; text-align: center; margin-top: 1mm; letter-spacing: 1px; }

          /* Upgrade Badge */
          .upgrade-badge {
            position: absolute;
            top: 2mm; right: 2mm;
            background: #ffb300;
            color: #111;
            font-weight: bold;
            font-size: 2.5mm;
            padding: 1mm 2mm;
            border: 0.5mm solid #111;
            border-radius: 1mm;
            text-transform: uppercase;
          }

          /* Massive Reward badge */
          .reward-badge {
            position: absolute;
            bottom: 2mm; right: 2mm;
            width: 14mm; height: 14mm;
            background: #111; color: #fbc02d;
            border-radius: 50%;
            display: flex; align-items: center; justify-content: center;
            font-size: 6mm; font-weight: bold; font-family: sans-serif;
            border: 0.5mm solid #fbc02d;
            box-shadow: 0 0 2mm rgba(0,0,0,0.5);
          }

          /* Back card full image */
          .card.back {
            background-size: cover;
            background-position: center;
            background-color: #111;
          }
        </style>
      </head>
      <body>
        <xsl:choose>
          <xsl:when test="$mode='both'"><xsl:call-template name="render-pages-interleaved"/></xsl:when>
          <xsl:when test="$mode='front'">
            <xsl:call-template name="render-pages"><xsl:with-param name="side" select="'front'"/></xsl:call-template>
          </xsl:when>
          <xsl:when test="$mode='back'">
            <xsl:call-template name="render-pages"><xsl:with-param name="side" select="'back'"/></xsl:call-template>
          </xsl:when>
        </xsl:choose>
      </body>
    </html>
  </xsl:template>

  <xsl:template name="sum-counts">
    <xsl:param name="nodes"/>
    <xsl:choose>
      <xsl:when test="not($nodes)">0</xsl:when>
      <xsl:otherwise>
        <xsl:variable name="first" select="$nodes[1]"/>
        <xsl:variable name="c">
          <xsl:choose>
            <xsl:when test="string-length(normalize-space($first/@count)) &gt; 0"><xsl:value-of select="number($first/@count)"/></xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>
        <xsl:variable name="rest">
          <xsl:call-template name="sum-counts">
            <xsl:with-param name="nodes" select="$nodes[position() &gt; 1]"/>
          </xsl:call-template>
        </xsl:variable>
        <xsl:value-of select="number($c) + number($rest)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="render-pages">
    <xsl:param name="side"/>
    <xsl:variable name="totalCount"><xsl:call-template name="sum-counts"><xsl:with-param name="nodes" select="/cards/card"/></xsl:call-template></xsl:variable>
    <xsl:call-template name="pages-loop">
      <xsl:with-param name="total" select="$totalCount"/>
      <xsl:with-param name="cur" select="1"/>
      <xsl:with-param name="side" select="$side"/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="render-pages-interleaved">
    <xsl:variable name="totalCount"><xsl:call-template name="sum-counts"><xsl:with-param name="nodes" select="/cards/card"/></xsl:call-template></xsl:variable>
    <xsl:variable name="pages" select="ceiling(number($totalCount) div $cardsPerPage)"/>
    <xsl:call-template name="pages-interleaved-loop">
      <xsl:with-param name="pages" select="$pages"/>
      <xsl:with-param name="i" select="0"/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="pages-interleaved-loop">
    <xsl:param name="pages"/>
    <xsl:param name="i" select="0"/>
    <xsl:if test="number($i) &lt; number($pages)">
      <xsl:variable name="startPos" select="$i * $cardsPerPage + 1"/>
      <div class="page"><div class="sheet"><xsl:call-template name="render-9"><xsl:with-param name="side" select="'front'"/><xsl:with-param name="startPos" select="$startPos"/></xsl:call-template></div></div>
      <div class="page"><div class="sheet"><xsl:call-template name="render-9"><xsl:with-param name="side" select="'back'"/><xsl:with-param name="startPos" select="$startPos"/></xsl:call-template></div></div>
      <xsl:call-template name="pages-interleaved-loop"><xsl:with-param name="pages" select="$pages"/><xsl:with-param name="i" select="$i + 1"/></xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template name="pages-loop">
    <xsl:param name="total"/>
    <xsl:param name="cur" select="1"/>
    <xsl:param name="side"/>
    <xsl:if test="number($cur) &lt;= number($total)">
      <div class="page">
        <div class="sheet"><xsl:call-template name="render-9"><xsl:with-param name="side" select="$side"/><xsl:with-param name="startPos" select="$cur"/></xsl:call-template></div>
      </div>
      <xsl:call-template name="pages-loop"><xsl:with-param name="total" select="$total"/><xsl:with-param name="cur" select="$cur + $cardsPerPage"/><xsl:with-param name="side" select="$side"/></xsl:call-template>
    </xsl:if>
  </xsl:template>

  <xsl:template name="render-9">
    <xsl:param name="side"/>
    <xsl:param name="startPos"/>
    <xsl:variable name="all" select="/cards/card"/>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 0"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 1"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 2"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 3"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 4"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 5"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 6"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 7"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
    <xsl:call-template name="render-slot"><xsl:with-param name="side" select="$side"/><xsl:with-param name="n" select="$startPos + 8"/><xsl:with-param name="all" select="$all"/></xsl:call-template>
  </xsl:template>

  <xsl:template name="render-slot">
    <xsl:param name="side"/>
    <xsl:param name="n"/>
    <xsl:param name="all"/>
    <xsl:call-template name="process-index">
      <xsl:with-param name="all" select="$all"/>
      <xsl:with-param name="idx" select="$n"/>
      <xsl:with-param name="side" select="$side"/>
    </xsl:call-template>
  </xsl:template>

  <xsl:template name="process-index">
    <xsl:param name="all"/>
    <xsl:param name="idx"/>
    <xsl:param name="side"/>
    <xsl:choose>
      <xsl:when test="not($all)">
        <div class="card back" style="background-color: #fff; border-color: #ddd;"></div>
      </xsl:when>
      <xsl:otherwise>
        <xsl:variable name="first" select="$all[1]"/>
        <xsl:variable name="c">
          <xsl:choose>
            <xsl:when test="string-length(normalize-space($first/@count)) &gt; 0"><xsl:value-of select="number($first/@count)"/></xsl:when>
            <xsl:otherwise>1</xsl:otherwise>
          </xsl:choose>
        </xsl:variable>

        <xsl:choose>
          <xsl:when test="number($idx) &lt;= number($c)">
            <xsl:choose>
              <xsl:when test="$side='front'">
                <xsl:call-template name="render-card-front"><xsl:with-param name="cardNode" select="$first"/></xsl:call-template>
              </xsl:when>
              <xsl:otherwise>
                <xsl:call-template name="render-card-back"><xsl:with-param name="cardNode" select="$first"/></xsl:call-template>
              </xsl:otherwise>
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            <xsl:call-template name="process-index">
              <xsl:with-param name="all" select="$all[position() &gt; 1]"/>
              <xsl:with-param name="idx" select="$idx - $c"/>
              <xsl:with-param name="side" select="$side"/>
            </xsl:call-template>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template name="render-card-front">
    <xsl:param name="cardNode"/>
    
    <xsl:variable name="bgImg" select="($cardNode/quest/@image | $cardNode/module/@image)[1]"/>
    <xsl:variable name="eraNum" select="($cardNode/quest/@era | $cardNode/module/@era)[1]"/>

    <div class="card era-{$eraNum}">
      <div class="card-art">
        <xsl:if test="string-length($bgImg) &gt; 0">
          <xsl:attribute name="style">background-image: url('<xsl:value-of select="$bgImg"/>');</xsl:attribute>
        </xsl:if>
        
        <div class="card-title">
          <div class="title-main"><xsl:value-of select="$cardNode/name"/></div>
          <xsl:if test="$cardNode/subtitle">
            <div class="title-sub"><xsl:value-of select="$cardNode/subtitle"/></div>
          </xsl:if>
        </div>

        <xsl:if test="$cardNode/quest/@is_upgrade = 'true'">
          <div class="upgrade-badge">Upgrade</div>
        </xsl:if>
      </div>
      
      <div class="card-body">
        <div class="card-desc">
          <xsl:value-of select="$cardNode/text"/>
        </div>

        <xsl:if test="$cardNode/quest">
          <div class="quest-details">
            <div>Místo: <strong><xsl:value-of select="$cardNode/quest/@city"/></strong></div>
            <div class="quest-req"><xsl:value-of select="$cardNode/quest/@wants"/></div>
          </div>
          <div class="reward-badge"><xsl:value-of select="$cardNode/quest/@reward"/></div>
        </xsl:if>
      </div>

      <xsl:if test="$cardNode/module">
        <div class="stats-bar">
          <xsl:if test="$cardNode/module/@power &gt; 0">
            <div class="stat power">
              <xsl:value-of select="$cardNode/module/@power"/>
              <span>Výkon</span>
            </div>
          </xsl:if>
          <xsl:if test="$cardNode/module/@weight &gt; 0">
            <div class="stat weight">
              <xsl:value-of select="$cardNode/module/@weight"/>
              <span>Zátěž</span>
            </div>
          </xsl:if>
          <xsl:if test="$cardNode/module/@capacity &gt; 0">
            <div class="stat capacity">
              <xsl:value-of select="$cardNode/module/@capacity"/>
              <span>Sklad</span>
            </div>
          </xsl:if>
        </div>
      </xsl:if>
    </div>
  </xsl:template>

  <xsl:template name="render-card-back">
    <xsl:param name="cardNode"/>
    
    <xsl:variable name="deckName" select="$cardNode/@deck"/>
    <xsl:variable name="backImg" select="/cards/icons/deck[@name=$deckName]/@back"/>

    <div class="card back">
      <xsl:if test="string-length($backImg) &gt; 0">
        <xsl:attribute name="style">background-image: url('<xsl:value-of select="$backImg"/>');</xsl:attribute>
      </xsl:if>
    </div>
  </xsl:template>

</xsl:stylesheet>
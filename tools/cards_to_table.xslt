<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/cards">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Obchodnici - Cards Database</title>
        <style>
          body{font-family:Arial,Helvetica,sans-serif;padding:16px}
          table{border-collapse:collapse;width:100%;margin-bottom:24px}
          th,td{border:1px solid #ddd;padding:6px;text-align:left;vertical-align:top}
          th{background:#f4f4f4}
          h1,h2{font-weight:600}
          .filters{margin-bottom:8px}
          .filters select{margin-right:8px;margin-bottom:8px}
          img.preview { max-width: 80px; max-height: 80px; border: 1px solid #ccc; }
          .badge { padding: 2px 6px; border-radius: 4px; font-size: 0.9em; font-weight: bold; }
          .bg-true { background: #ffd54f; color: #000; }
        </style>
        
        <script>
          document.addEventListener('DOMContentLoaded', function(){
            document.querySelectorAll('table.filterable').forEach(function(table){
              var rows = Array.from(table.querySelectorAll('tr')).slice(1);
              var filtersDiv = table.previousElementSibling &amp;&amp; table.previousElementSibling.classList.contains('filters') ? table.previousElementSibling : null;
              if(!filtersDiv) return;
              var colClasses = new Set();
              rows.forEach(function(r){ r.querySelectorAll('td').forEach(function(td){ td.classList.forEach(function(c){ if(c.indexOf('col-')===0) colClasses.add(c); }); }); });
              colClasses.forEach(function(colClass){
                var select = document.createElement('select');
                select.dataset.col = colClass;
                var opt = document.createElement('option'); opt.value=''; opt.text='All '+colClass.replace('col-',''); select.appendChild(opt);
                var values = new Set();
                table.querySelectorAll('td.'+colClass).forEach(function(td){ values.add(td.textContent.trim()); });
                Array.from(values).sort().forEach(function(v){ var o=document.createElement('option'); o.value=v; o.text=v; select.appendChild(o); });
                select.addEventListener('change', function(){
                  var selVals = {};
                  filtersDiv.querySelectorAll('select').forEach(function(s){ if(s.value) selVals[s.dataset.col]=s.value; });
                  rows.forEach(function(row){
                    var show = true;
                    Object.keys(selVals).forEach(function(cc){
                      var cell = row.querySelector('td.'+cc);
                      var val = cell?cell.textContent.trim():'';
                      if(val !== selVals[cc]) show = false;
                    });
                    row.style.display = show ? '' : 'none';
                  });
                });
                filtersDiv.appendChild(select);
              });
            });
          });
        </script>
      </head>
      <body>
        <h1>Obchodnici - Cards Database</h1>

        <h2>Quests (Ukoly a poptavky)</h2>
        <div class="filters"></div>
        <table class="filterable">
          <tr>
            <th>ID</th><th>Deck</th><th>Count</th><th>Name</th><th>Subtitle</th><th>Text</th>
            <th>Era</th><th>City</th><th>Wants</th><th>Reward</th><th>Upgrade</th><th>Image</th>
          </tr>
          <xsl:for-each select="card[quest]">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td class="col-deck"><xsl:value-of select="@deck"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="@count"><xsl:value-of select="@count"/></xsl:when>
                  <xsl:otherwise>1</xsl:otherwise>
                </xsl:choose>
              </td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="subtitle"/></td>
              <td><xsl:value-of select="text"/></td>
              <td class="col-era"><xsl:value-of select="quest/@era"/></td>
              <td class="col-city"><xsl:value-of select="quest/@city"/></td>
              <td><xsl:value-of select="quest/@wants"/></td>
              <td><xsl:value-of select="quest/@reward"/></td>
              <td>
                <xsl:if test="quest/@is_upgrade = 'true'">
                  <span class="badge bg-true">UPGRADE</span>
                </xsl:if>
              </td>
              <td>
                <xsl:if test="string-length(quest/@image) &gt; 0">
                  <img class="preview">
                    <xsl:attribute name="src"><xsl:value-of select="quest/@image"/></xsl:attribute>
                  </img>
                </xsl:if>
              </td>
            </tr>
          </xsl:for-each>
        </table>

        <h2>Modules (Vylepseni stroju)</h2>
        <div class="filters"></div>
        <table class="filterable">
          <tr>
            <th>ID</th><th>Deck</th><th>Count</th><th>Name</th><th>Subtitle</th><th>Text</th>
            <th>Era</th><th>Category</th><th>Power</th><th>Weight</th><th>Capacity</th><th>Image</th>
          </tr>
          <xsl:for-each select="card[module]">
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td class="col-deck"><xsl:value-of select="@deck"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="@count"><xsl:value-of select="@count"/></xsl:when>
                  <xsl:otherwise>1</xsl:otherwise>
                </xsl:choose>
              </td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="subtitle"/></td>
              <td><xsl:value-of select="text"/></td>
              <td class="col-era"><xsl:value-of select="module/@era"/></td>
              <td class="col-category"><xsl:value-of select="module/@category"/></td>
              <td><xsl:value-of select="module/@power"/></td>
              <td><xsl:value-of select="module/@weight"/></td>
              <td><xsl:value-of select="module/@capacity"/></td>
              <td>
                <xsl:if test="string-length(module/@image) &gt; 0">
                  <img class="preview">
                    <xsl:attribute name="src"><xsl:value-of select="module/@image"/></xsl:attribute>
                  </img>
                </xsl:if>
              </td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
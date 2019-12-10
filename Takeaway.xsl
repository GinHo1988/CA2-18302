<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
                <table id="menuTable" class="indent">
                    <thead>
                        <tr>
                            <h2 colspan="4">Tasty Chinese Takeaway Menu</h2>
                        </tr>
                        <tr>
                            <th>Select</th>
                            <th>Item</th>
                            <th>Price</th>
                            <th>Food Allergen</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/menu/section">
                            <tr>
                                <td colspan="4">
                                    <xsl:value-of select="@name" />
                                </td>
                            </tr>
                            <xsl:for-each select="entree">
                            <tr id="{position()}">
                                    <xsl:attribute name="gluten">
                                    <xsl:value-of select="boolean(./@gluten)" />
                                </xsl:attribute>
                                <td align="center">
                                    <input name="check" type="checkbox" />
                                </td>
                                <td>
                                    <xsl:value-of select="item" />
                                </td>
                                <td align="right">
                                    <xsl:value-of select="price" />
                                </td>
                                 <td align="right">
                                    <span style="font-size:10pt;font-style:italic"><xsl:value-of select="allergen" /></span>
                                </td>
                            </tr>
                            </xsl:for-each>
                        </xsl:for-each>
                    </tbody>
                </table><br/>
    </xsl:template>
</xsl:stylesheet>
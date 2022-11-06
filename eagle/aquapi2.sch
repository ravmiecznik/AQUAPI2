<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="5" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="dforbot" urn="urn:adsk.eagle:library:37745597">
<packages>
<package name="PH_METER_V2.0" urn="urn:adsk.eagle:footprint:37745598/3" library_version="8">
<wire x1="0" y1="0" x2="32" y2="0" width="0.127" layer="21"/>
<wire x1="0" y1="0" x2="0" y2="42.3" width="0.127" layer="21"/>
<wire x1="32" y1="0" x2="32" y2="42.3" width="0.127" layer="21"/>
<wire x1="0" y1="42.3" x2="32" y2="42.3" width="0.127" layer="21"/>
<wire x1="9" y1="29.5" x2="9" y2="43" width="0.127" layer="20"/>
<wire x1="9" y1="29.5" x2="23" y2="29.5" width="0.127" layer="20"/>
<wire x1="23" y1="29.5" x2="23" y2="43" width="0.127" layer="20"/>
<wire x1="23" y1="43" x2="21" y2="43" width="0.127" layer="20"/>
<wire x1="21" y1="43" x2="21" y2="53" width="0.127" layer="20"/>
<wire x1="11" y1="53" x2="11" y2="43" width="0.127" layer="20"/>
<wire x1="11" y1="43" x2="9" y2="43" width="0.127" layer="20"/>
<wire x1="11" y1="53" x2="12" y2="53" width="0.127" layer="20"/>
<wire x1="12" y1="53" x2="12" y2="63" width="0.127" layer="20"/>
<wire x1="21" y1="53" x2="20" y2="53" width="0.127" layer="20"/>
<wire x1="20" y1="53" x2="20" y2="63" width="0.127" layer="20"/>
<wire x1="20" y1="63" x2="12" y2="63" width="0.127" layer="20"/>
<pad name="P$1" x="3" y="3" drill="3" diameter="6"/>
<pad name="P$2" x="29" y="3" drill="3" diameter="6"/>
<pad name="GND" x="3" y="39.3" drill="3" diameter="6"/>
<pad name="P$4" x="29" y="39.3" drill="3" diameter="6"/>
</package>
</packages>
<packages3d>
<package3d name="PH_METER_V2.0" urn="urn:adsk.eagle:package:37745600/3" type="box" library_version="8">
<packageinstances>
<packageinstance name="PH_METER_V2.0"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="DFORBOT_PH_AMP" urn="urn:adsk.eagle:symbol:37745599/3" library_version="8">
<wire x1="0" y1="38.1" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="30.48" y2="0" width="0.254" layer="94"/>
<wire x1="30.48" y1="0" x2="30.48" y2="38.1" width="0.254" layer="94"/>
<wire x1="30.48" y1="38.1" x2="0" y2="38.1" width="0.254" layer="94"/>
<text x="0" y="40.64" size="1.778" layer="95">&gt;pH Meter v2.0</text>
<text x="0" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PH_METER_V2.0" urn="urn:adsk.eagle:component:37745606/5" library_version="8">
<description>PH METER V2.0</description>
<gates>
<gate name="G$1" symbol="DFORBOT_PH_AMP" x="20.32" y="15.24"/>
</gates>
<devices>
<device name="" package="PH_METER_V2.0">
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:37745600/3"/>
</package3dinstances>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Raspberry_Pi_Zero_W__v1.3_">
<description>&lt;Raspberry Pi Zero W (v1.3) Single-board Computers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by SamacSys&lt;/author&gt;</description>
<packages>
<package name="RASPBERRYPIZEROWV13">
<description>&lt;b&gt;Raspberry Pi Zero W (v1.3)_1&lt;/b&gt;&lt;br&gt;
</description>
<pad name="1" x="-23.885" y="9.92" drill="1.11" diameter="1.665" shape="square"/>
<pad name="2" x="-23.885" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="3" x="-21.345" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="4" x="-21.345" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="5" x="-18.805" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="6" x="-18.805" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="7" x="-16.265" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="8" x="-16.265" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="9" x="-13.725" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="10" x="-13.725" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="11" x="-11.185" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="12" x="-11.185" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="13" x="-8.645" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="14" x="-8.645" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="15" x="-6.105" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="16" x="-6.105" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="17" x="-3.565" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="18" x="-3.565" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="19" x="-1.025" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="20" x="-1.025" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="21" x="1.515" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="22" x="1.515" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="23" x="4.055" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="24" x="4.055" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="25" x="6.595" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="26" x="6.595" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="27" x="9.135" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="28" x="9.135" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="29" x="11.675" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="30" x="11.675" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="31" x="14.215" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="32" x="14.215" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="33" x="16.755" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="34" x="16.755" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="35" x="19.295" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="36" x="19.295" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="37" x="21.835" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="38" x="21.835" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="39" x="24.375" y="9.92" drill="1.11" diameter="1.665"/>
<pad name="40" x="24.375" y="12.46" drill="1.11" diameter="1.665"/>
<pad name="41" x="24.375" y="7.38" drill="1.11" diameter="1.665" shape="square"/>
<pad name="42" x="21.835" y="7.38" drill="1.11" diameter="1.665"/>
<pad name="43" x="21.835" y="4.84" drill="1.11" diameter="1.665" shape="square"/>
<pad name="44" x="24.375" y="4.84" drill="1.11" diameter="1.665"/>
<hole x="-28.755" y="11.5" drill="2.8"/>
<hole x="-28.755" y="-11.5" drill="2.8"/>
<hole x="29.245" y="-11.5" drill="2.8"/>
<hole x="29.245" y="11.5" drill="2.8"/>
<text x="0" y="0" size="1.27" layer="27" align="center">&gt;VALUE</text>
<text x="0" y="0" size="1.27" layer="25" align="center">&gt;NAME</text>
<wire x1="20.805" y1="8.48" x2="25.405" y2="8.48" width="0.1" layer="21"/>
<wire x1="25.405" y1="8.48" x2="25.405" y2="6.28" width="0.1" layer="21"/>
<wire x1="25.405" y1="6.28" x2="20.805" y2="6.28" width="0.1" layer="21"/>
<wire x1="20.805" y1="6.28" x2="20.805" y2="8.48" width="0.1" layer="21"/>
<wire x1="20.805" y1="5.94" x2="25.405" y2="5.94" width="0.1" layer="21"/>
<wire x1="25.405" y1="5.94" x2="25.405" y2="3.74" width="0.1" layer="21"/>
<wire x1="25.405" y1="3.74" x2="20.805" y2="3.74" width="0.1" layer="21"/>
<wire x1="20.805" y1="3.74" x2="20.805" y2="5.94" width="0.1" layer="21"/>
<wire x1="-33.745" y1="16" x2="33.745" y2="16" width="0.1" layer="51"/>
<wire x1="33.745" y1="16" x2="33.745" y2="-16" width="0.1" layer="51"/>
<wire x1="33.745" y1="-16" x2="-33.745" y2="-16" width="0.1" layer="51"/>
<wire x1="-33.745" y1="-16" x2="-33.745" y2="16" width="0.1" layer="51"/>
<wire x1="-32.695" y1="9.94" x2="-32.695" y2="9.94" width="0.1" layer="21"/>
<wire x1="-32.695" y1="9.94" x2="-32.695" y2="9.84" width="0.1" layer="21" curve="-180"/>
<wire x1="-32.695" y1="9.84" x2="-32.695" y2="9.84" width="0.1" layer="21"/>
<wire x1="-32.695" y1="9.84" x2="-32.695" y2="9.94" width="0.1" layer="21" curve="-180"/>
<wire x1="-32.255" y1="12.46" x2="-32.255" y2="-12.46" width="0.1" layer="21"/>
<wire x1="-32.255" y1="-12.46" x2="-29.755" y2="-15" width="0.1" layer="21" curve="89"/>
<wire x1="-29.755" y1="-15" x2="30.245" y2="-15" width="0.1" layer="21"/>
<wire x1="30.245" y1="-15" x2="32.745" y2="-12.46" width="0.1" layer="21" curve="90.8"/>
<wire x1="32.745" y1="-12.46" x2="32.745" y2="12.46" width="0.1" layer="21"/>
<wire x1="32.745" y1="12.46" x2="30.245" y2="15" width="0.1" layer="21" curve="89"/>
<wire x1="30.245" y1="15" x2="-29.755" y2="15" width="0.1" layer="21"/>
<wire x1="-29.755" y1="15" x2="-32.255" y2="12.46" width="0.1" layer="21" curve="90.8"/>
<wire x1="30.245" y1="-15" x2="32.745" y2="-12.46" width="0.2" layer="51" curve="90.8"/>
<wire x1="32.745" y1="-12.46" x2="32.745" y2="12.46" width="0.2" layer="51"/>
<wire x1="32.745" y1="12.46" x2="30.245" y2="15" width="0.2" layer="51" curve="90.8"/>
<wire x1="30.245" y1="15" x2="-29.755" y2="15" width="0.2" layer="51"/>
<wire x1="-29.755" y1="15" x2="-32.255" y2="12.46" width="0.2" layer="51" curve="90.8"/>
<wire x1="-32.255" y1="12.46" x2="-32.255" y2="-12.46" width="0.2" layer="51"/>
<wire x1="-32.255" y1="-12.46" x2="-29.755" y2="-15" width="0.2" layer="51" curve="89"/>
<wire x1="-29.755" y1="-15" x2="30.245" y2="-15" width="0.2" layer="51"/>
</package>
</packages>
<symbols>
<symbol name="RASPBERRY_PI_ZERO_W__V1.3_">
<wire x1="5.08" y1="2.54" x2="68.58" y2="2.54" width="0.254" layer="94"/>
<wire x1="68.58" y1="-55.88" x2="68.58" y2="2.54" width="0.254" layer="94"/>
<wire x1="68.58" y1="-55.88" x2="5.08" y2="-55.88" width="0.254" layer="94"/>
<wire x1="5.08" y1="2.54" x2="5.08" y2="-55.88" width="0.254" layer="94"/>
<text x="69.85" y="7.62" size="1.778" layer="95" align="center-left">&gt;NAME</text>
<text x="69.85" y="5.08" size="1.778" layer="96" align="center-left">&gt;VALUE</text>
<pin name="+3.3V_1" x="0" y="0" length="middle"/>
<pin name="+5V_1" x="0" y="-2.54" length="middle"/>
<pin name="GPIO_2/[I2C]_SDA" x="0" y="-5.08" length="middle"/>
<pin name="+5V_2" x="0" y="-7.62" length="middle"/>
<pin name="GPIO_3/[I2C]_SCL" x="0" y="-10.16" length="middle"/>
<pin name="GND_1" x="0" y="-12.7" length="middle"/>
<pin name="GPIO_4/GPCLK0" x="0" y="-15.24" length="middle"/>
<pin name="GPIO_14/[UART]_TXD0" x="0" y="-17.78" length="middle"/>
<pin name="GND_2" x="0" y="-20.32" length="middle"/>
<pin name="GPIO_15/[UART]_RXD0" x="0" y="-22.86" length="middle"/>
<pin name="GPIO_17/SPI1_CS1" x="0" y="-25.4" length="middle"/>
<pin name="GPIO_18/PWM0/SPI1_CS0" x="0" y="-27.94" length="middle"/>
<pin name="GPIO27" x="0" y="-30.48" length="middle"/>
<pin name="GND_3" x="0" y="-33.02" length="middle"/>
<pin name="GPIO_22" x="0" y="-35.56" length="middle"/>
<pin name="GPIO_23" x="0" y="-38.1" length="middle"/>
<pin name="+3.3V_2" x="0" y="-40.64" length="middle"/>
<pin name="GPIO_24" x="0" y="-43.18" length="middle"/>
<pin name="GPIO_10/SPI0_MOSI" x="0" y="-45.72" length="middle"/>
<pin name="GND_4" x="0" y="-48.26" length="middle"/>
<pin name="GPIO_9/SPI0_MISO" x="0" y="-50.8" length="middle"/>
<pin name="GPIO_25" x="0" y="-53.34" length="middle"/>
<pin name="GPIO_11/SPI0_SCLK" x="73.66" y="0" length="middle" rot="R180"/>
<pin name="GPIO_8/SPI0_CE1_N" x="73.66" y="-2.54" length="middle" rot="R180"/>
<pin name="GND_5" x="73.66" y="-5.08" length="middle" rot="R180"/>
<pin name="GPIO_7/SPI0_CE2_N" x="73.66" y="-7.62" length="middle" rot="R180"/>
<pin name="DNC_1" x="73.66" y="-10.16" length="middle" rot="R180"/>
<pin name="DNC_2" x="73.66" y="-12.7" length="middle" rot="R180"/>
<pin name="GPIO5//GPCLK1" x="73.66" y="-15.24" length="middle" rot="R180"/>
<pin name="GND_6" x="73.66" y="-17.78" length="middle" rot="R180"/>
<pin name="GPIO6/GPCLK2" x="73.66" y="-20.32" length="middle" rot="R180"/>
<pin name="GPIO12/PWM0" x="73.66" y="-22.86" length="middle" rot="R180"/>
<pin name="GPIO13/PWM1" x="73.66" y="-25.4" length="middle" rot="R180"/>
<pin name="GND_7" x="73.66" y="-27.94" length="middle" rot="R180"/>
<pin name="GPIO19/SPI0_MISO1/PWM1" x="73.66" y="-30.48" length="middle" rot="R180"/>
<pin name="GPIO16/SPI1_CS2" x="73.66" y="-33.02" length="middle" rot="R180"/>
<pin name="GPIO26" x="73.66" y="-35.56" length="middle" rot="R180"/>
<pin name="GPIO20/SPI0_MOSI1" x="73.66" y="-38.1" length="middle" rot="R180"/>
<pin name="GND_8" x="73.66" y="-40.64" length="middle" rot="R180"/>
<pin name="GPIO21/SPI0_SCLK1" x="73.66" y="-43.18" length="middle" rot="R180"/>
<pin name="RUN_1" x="73.66" y="-45.72" length="middle" rot="R180"/>
<pin name="RUN_2" x="73.66" y="-48.26" length="middle" rot="R180"/>
<pin name="TV_+" x="73.66" y="-50.8" length="middle" rot="R180"/>
<pin name="TV_-" x="73.66" y="-53.34" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RASPBERRY_PI_ZERO_W__V1.3_" prefix="IC">
<description>&lt;b&gt;Raspberry Pi Zero W (v1.3) Single-board Computers&lt;/b&gt;&lt;p&gt;
Source: &lt;a href="https://cdn.sparkfun.com/assets/learn_tutorials/6/7/6/PiZero_1.pdf"&gt; Datasheet &lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="RASPBERRY_PI_ZERO_W__V1.3_" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RASPBERRYPIZEROWV13">
<connects>
<connect gate="G$1" pin="+3.3V_1" pad="1"/>
<connect gate="G$1" pin="+3.3V_2" pad="17"/>
<connect gate="G$1" pin="+5V_1" pad="2"/>
<connect gate="G$1" pin="+5V_2" pad="4"/>
<connect gate="G$1" pin="DNC_1" pad="27"/>
<connect gate="G$1" pin="DNC_2" pad="28"/>
<connect gate="G$1" pin="GND_1" pad="6"/>
<connect gate="G$1" pin="GND_2" pad="9"/>
<connect gate="G$1" pin="GND_3" pad="14"/>
<connect gate="G$1" pin="GND_4" pad="20"/>
<connect gate="G$1" pin="GND_5" pad="25"/>
<connect gate="G$1" pin="GND_6" pad="30"/>
<connect gate="G$1" pin="GND_7" pad="34"/>
<connect gate="G$1" pin="GND_8" pad="39"/>
<connect gate="G$1" pin="GPIO12/PWM0" pad="32"/>
<connect gate="G$1" pin="GPIO13/PWM1" pad="33"/>
<connect gate="G$1" pin="GPIO16/SPI1_CS2" pad="36"/>
<connect gate="G$1" pin="GPIO19/SPI0_MISO1/PWM1" pad="35"/>
<connect gate="G$1" pin="GPIO20/SPI0_MOSI1" pad="38"/>
<connect gate="G$1" pin="GPIO21/SPI0_SCLK1" pad="40"/>
<connect gate="G$1" pin="GPIO26" pad="37"/>
<connect gate="G$1" pin="GPIO27" pad="13"/>
<connect gate="G$1" pin="GPIO5//GPCLK1" pad="29"/>
<connect gate="G$1" pin="GPIO6/GPCLK2" pad="31"/>
<connect gate="G$1" pin="GPIO_10/SPI0_MOSI" pad="19"/>
<connect gate="G$1" pin="GPIO_11/SPI0_SCLK" pad="23"/>
<connect gate="G$1" pin="GPIO_14/[UART]_TXD0" pad="8"/>
<connect gate="G$1" pin="GPIO_15/[UART]_RXD0" pad="10"/>
<connect gate="G$1" pin="GPIO_17/SPI1_CS1" pad="11"/>
<connect gate="G$1" pin="GPIO_18/PWM0/SPI1_CS0" pad="12"/>
<connect gate="G$1" pin="GPIO_2/[I2C]_SDA" pad="3"/>
<connect gate="G$1" pin="GPIO_22" pad="15"/>
<connect gate="G$1" pin="GPIO_23" pad="16"/>
<connect gate="G$1" pin="GPIO_24" pad="18"/>
<connect gate="G$1" pin="GPIO_25" pad="22"/>
<connect gate="G$1" pin="GPIO_3/[I2C]_SCL" pad="5"/>
<connect gate="G$1" pin="GPIO_4/GPCLK0" pad="7"/>
<connect gate="G$1" pin="GPIO_7/SPI0_CE2_N" pad="26"/>
<connect gate="G$1" pin="GPIO_8/SPI0_CE1_N" pad="24"/>
<connect gate="G$1" pin="GPIO_9/SPI0_MISO" pad="21"/>
<connect gate="G$1" pin="RUN_1" pad="41"/>
<connect gate="G$1" pin="RUN_2" pad="42"/>
<connect gate="G$1" pin="TV_+" pad="43"/>
<connect gate="G$1" pin="TV_-" pad="44"/>
</connects>
<technologies>
<technology name="">
<attribute name="ARROW_PART_NUMBER" value="" constant="no"/>
<attribute name="ARROW_PRICE-STOCK" value="" constant="no"/>
<attribute name="DESCRIPTION" value="Raspberry Pi Zero W (v1.3) Single-board Computers" constant="no"/>
<attribute name="HEIGHT" value="mm" constant="no"/>
<attribute name="MANUFACTURER_NAME" value="RASPBERRY-PI" constant="no"/>
<attribute name="MANUFACTURER_PART_NUMBER" value="Raspberry Pi Zero W (v1.3)" constant="no"/>
<attribute name="MOUSER_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_PRICE-STOCK" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PART_NUMBER" value="" constant="no"/>
<attribute name="MOUSER_TESTING_PRICE-STOCK" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Arduino-clone">
<description>Arduino Clone pinheaders
By cl@xganon.com
http://www.xganon.com</description>
<packages>
<package name="PRO-MINI">
<description>Arduino Pro Mini Clone</description>
<pad name="TX0" x="-6.35" y="26.67" drill="0.8" shape="long"/>
<pad name="RX1" x="-6.35" y="24.13" drill="0.8" shape="long"/>
<pad name="RST1" x="-6.35" y="21.59" drill="0.8" shape="long"/>
<pad name="GND1" x="-6.35" y="19.05" drill="0.8" shape="long"/>
<pad name="D2" x="-6.35" y="16.51" drill="0.8" shape="long"/>
<pad name="D3" x="-6.35" y="13.97" drill="0.8" shape="long"/>
<pad name="D4" x="-6.35" y="11.43" drill="0.8" shape="long"/>
<pad name="D5" x="-6.35" y="8.89" drill="0.8" shape="long"/>
<pad name="D6" x="-6.35" y="6.35" drill="0.8" shape="long"/>
<pad name="D7" x="-6.35" y="3.81" drill="0.8" shape="long"/>
<pad name="D8" x="-6.35" y="1.27" drill="0.8" shape="long"/>
<pad name="D9" x="-6.35" y="-1.27" drill="0.8" shape="long"/>
<pad name="RAW" x="8.89" y="26.67" drill="0.8" shape="long"/>
<pad name="GND" x="8.89" y="24.13" drill="0.8" shape="long"/>
<pad name="RST" x="8.89" y="21.59" drill="0.8" shape="long"/>
<pad name="VCC" x="8.89" y="19.05" drill="0.8" shape="long"/>
<pad name="A3" x="8.89" y="16.51" drill="0.8" shape="long"/>
<pad name="A2" x="8.89" y="13.97" drill="0.8" shape="long"/>
<pad name="A1" x="8.89" y="11.43" drill="0.8" shape="long"/>
<pad name="A0" x="8.89" y="8.89" drill="0.8" shape="long"/>
<pad name="D13" x="8.89" y="6.35" drill="0.8" shape="long"/>
<pad name="D12" x="8.89" y="3.81" drill="0.8" shape="long"/>
<pad name="D11" x="8.89" y="1.27" drill="0.8" shape="long"/>
<pad name="D10" x="8.89" y="-1.27" drill="0.8" shape="long"/>
<pad name="GND2" x="-5.08" y="29.21" drill="0.8" shape="long" rot="R90"/>
<pad name="GND3" x="-2.54" y="29.21" drill="0.8" shape="long" rot="R90"/>
<pad name="VCC1" x="0" y="29.21" drill="0.8" shape="long" rot="R90"/>
<pad name="RX1-1" x="2.54" y="29.21" drill="0.8" shape="long" rot="R90"/>
<pad name="TX0-1" x="5.08" y="29.21" drill="0.8" shape="long" rot="R90"/>
<pad name="DTR" x="7.62" y="29.21" drill="0.8" shape="long" rot="R90"/>
<pad name="A4" x="-2.54" y="-1.27" drill="0.8" shape="long" rot="R90"/>
<pad name="A5" x="0" y="-1.27" drill="0.8" shape="long" rot="R90"/>
<pad name="A6" x="2.54" y="-1.27" drill="0.8" shape="long" rot="R90"/>
<pad name="A7" x="5.08" y="-1.27" drill="0.8" shape="long" rot="R90"/>
</package>
</packages>
<symbols>
<symbol name="PRO-MINI">
<description>Arduino Pro Mini Clone</description>
<pin name="TX0" x="-22.86" y="20.32" visible="pin" length="middle"/>
<pin name="RX1" x="-22.86" y="17.78" visible="pin" length="middle"/>
<pin name="RST2" x="-22.86" y="15.24" visible="pin" length="middle"/>
<pin name="GND2" x="-22.86" y="12.7" visible="pin" length="middle"/>
<pin name="D2" x="-22.86" y="10.16" visible="pin" length="middle"/>
<pin name="D3" x="-22.86" y="7.62" visible="pin" length="middle"/>
<pin name="D4" x="-22.86" y="5.08" visible="pin" length="middle"/>
<pin name="D5" x="-22.86" y="2.54" visible="pin" length="middle"/>
<pin name="D6" x="-22.86" y="0" visible="pin" length="middle"/>
<pin name="D7" x="-22.86" y="-2.54" visible="pin" length="middle"/>
<pin name="D8" x="-22.86" y="-5.08" visible="pin" length="middle"/>
<pin name="D9" x="-22.86" y="-7.62" visible="pin" length="middle"/>
<pin name="RAW" x="17.78" y="20.32" visible="pin" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="17.78" y="17.78" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="RST" x="17.78" y="15.24" visible="pin" length="middle" rot="R180"/>
<pin name="VCC" x="17.78" y="12.7" visible="pin" length="middle" rot="R180"/>
<pin name="A3" x="17.78" y="10.16" visible="pin" length="middle" rot="R180"/>
<pin name="A2" x="17.78" y="7.62" visible="pin" length="middle" rot="R180"/>
<pin name="A1" x="17.78" y="5.08" visible="pin" length="middle" rot="R180"/>
<pin name="A0" x="17.78" y="2.54" visible="pin" length="middle" rot="R180"/>
<pin name="D13" x="17.78" y="0" visible="pin" length="middle" rot="R180"/>
<pin name="D12" x="17.78" y="-2.54" visible="pin" length="middle" rot="R180"/>
<pin name="D11" x="17.78" y="-5.08" visible="pin" length="middle" rot="R180"/>
<pin name="D10" x="17.78" y="-7.62" visible="pin" length="middle" rot="R180"/>
<pin name="GND4" x="-7.62" y="35.56" visible="pin" length="middle" rot="R270"/>
<pin name="GND3" x="-5.08" y="35.56" visible="pin" length="middle" rot="R270"/>
<pin name="VCC2" x="-2.54" y="35.56" visible="pin" length="middle" rot="R270"/>
<pin name="RX1-1" x="0" y="35.56" visible="pin" length="middle" rot="R270"/>
<pin name="TX0-1" x="2.54" y="35.56" visible="pin" length="middle" rot="R270"/>
<pin name="DTR" x="5.08" y="35.56" visible="pin" length="middle" rot="R270"/>
<pin name="A4" x="-5.08" y="-17.78" visible="pin" length="middle" rot="R90"/>
<pin name="A5" x="-2.54" y="-17.78" visible="pin" length="middle" rot="R90"/>
<pin name="A6" x="0" y="-17.78" visible="pin" length="middle" rot="R90"/>
<pin name="A7" x="2.54" y="-17.78" visible="pin" length="middle" rot="R90"/>
<wire x1="-17.78" y1="30.48" x2="12.7" y2="30.48" width="0.254" layer="94"/>
<wire x1="12.7" y1="30.48" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="-17.78" y2="-12.7" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-12.7" x2="-17.78" y2="30.48" width="0.254" layer="94"/>
<text x="-2.54" y="0" size="1.778" layer="95" rot="R90">Arduino Pro Mini</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="PRO-MINI">
<description>Arduion Pro Mini Clone V1.0
www.betemcu.cu</description>
<gates>
<gate name="G$1" symbol="PRO-MINI" x="38.1" y="-5.08"/>
</gates>
<devices>
<device name="" package="PRO-MINI">
<connects>
<connect gate="G$1" pin="A0" pad="A0"/>
<connect gate="G$1" pin="A1" pad="A1"/>
<connect gate="G$1" pin="A2" pad="A2"/>
<connect gate="G$1" pin="A3" pad="A3"/>
<connect gate="G$1" pin="A4" pad="A4"/>
<connect gate="G$1" pin="A5" pad="A5"/>
<connect gate="G$1" pin="A6" pad="A6"/>
<connect gate="G$1" pin="A7" pad="A7"/>
<connect gate="G$1" pin="D10" pad="D10"/>
<connect gate="G$1" pin="D11" pad="D11"/>
<connect gate="G$1" pin="D12" pad="D12"/>
<connect gate="G$1" pin="D13" pad="D13"/>
<connect gate="G$1" pin="D2" pad="D2"/>
<connect gate="G$1" pin="D3" pad="D3"/>
<connect gate="G$1" pin="D4" pad="D4"/>
<connect gate="G$1" pin="D5" pad="D5"/>
<connect gate="G$1" pin="D6" pad="D6"/>
<connect gate="G$1" pin="D7" pad="D7"/>
<connect gate="G$1" pin="D8" pad="D8"/>
<connect gate="G$1" pin="D9" pad="D9"/>
<connect gate="G$1" pin="DTR" pad="DTR"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="GND2" pad="GND1"/>
<connect gate="G$1" pin="GND3" pad="GND3"/>
<connect gate="G$1" pin="GND4" pad="GND2"/>
<connect gate="G$1" pin="RAW" pad="RAW"/>
<connect gate="G$1" pin="RST" pad="RST"/>
<connect gate="G$1" pin="RST2" pad="RST1"/>
<connect gate="G$1" pin="RX1" pad="RX1"/>
<connect gate="G$1" pin="RX1-1" pad="RX1-1"/>
<connect gate="G$1" pin="TX0" pad="TX0"/>
<connect gate="G$1" pin="TX0-1" pad="TX0-1"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
<connect gate="G$1" pin="VCC2" pad="VCC1"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead" urn="urn:adsk.eagle:library:325">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X03" urn="urn:adsk.eagle:footprint:22340/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.175" y1="1.27" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-0.635" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.27" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="3.81" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="1.27" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-3.8862" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-3.81" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="-0.254" y1="-0.254" x2="0.254" y2="0.254" layer="51"/>
<rectangle x1="-2.794" y1="-0.254" x2="-2.286" y2="0.254" layer="51"/>
<rectangle x1="2.286" y1="-0.254" x2="2.794" y2="0.254" layer="51"/>
</package>
<package name="1X03/90" urn="urn:adsk.eagle:footprint:22341/1" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-3.81" y1="-1.905" x2="-1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="0.635" x2="-3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="0.635" x2="-3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="6.985" x2="-2.54" y2="1.27" width="0.762" layer="21"/>
<wire x1="-1.27" y1="-1.905" x2="1.27" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="0.635" x2="-1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="6.985" x2="0" y2="1.27" width="0.762" layer="21"/>
<wire x1="1.27" y1="-1.905" x2="3.81" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="3.81" y1="-1.905" x2="3.81" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="0.635" x2="1.27" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="6.985" x2="2.54" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="0" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="2.54" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-4.445" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="5.715" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.921" y1="0.635" x2="-2.159" y2="1.143" layer="21"/>
<rectangle x1="-0.381" y1="0.635" x2="0.381" y2="1.143" layer="21"/>
<rectangle x1="2.159" y1="0.635" x2="2.921" y2="1.143" layer="21"/>
<rectangle x1="-2.921" y1="-2.921" x2="-2.159" y2="-1.905" layer="21"/>
<rectangle x1="-0.381" y1="-2.921" x2="0.381" y2="-1.905" layer="21"/>
<rectangle x1="2.159" y1="-2.921" x2="2.921" y2="-1.905" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="1X03" urn="urn:adsk.eagle:package:22458/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03"/>
</packageinstances>
</package3d>
<package3d name="1X03/90" urn="urn:adsk.eagle:package:22459/2" type="model" library_version="4">
<description>PIN HEADER</description>
<packageinstances>
<packageinstance name="1X03/90"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PINHD3" urn="urn:adsk.eagle:symbol:22339/1" library_version="4">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="-6.35" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="5.08" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="5.715" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X3" urn="urn:adsk.eagle:component:22524/4" prefix="JP" uservalue="yes" library_version="4">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD3" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X03">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22458/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="92" constant="no"/>
</technology>
</technologies>
</device>
<device name="/90" package="1X03/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:22459/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="POPULARITY" value="17" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply2" urn="urn:adsk.eagle:library:372">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
Please keep in mind, that these devices are necessary for the
automatic wiring of the supply signals.&lt;p&gt;
The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26990/1" library_version="2">
<wire x1="-1.27" y1="0" x2="1.27" y2="0" width="0.254" layer="94"/>
<wire x1="1.27" y1="0" x2="0" y2="-1.27" width="0.254" layer="94"/>
<wire x1="0" y1="-1.27" x2="-1.27" y2="0" width="0.254" layer="94"/>
<text x="-1.905" y="-3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+05V" urn="urn:adsk.eagle:symbol:26987/1" library_version="2">
<wire x1="-0.635" y1="1.27" x2="0.635" y2="1.27" width="0.1524" layer="94"/>
<wire x1="0" y1="0.635" x2="0" y2="1.905" width="0.1524" layer="94"/>
<circle x="0" y="1.27" radius="1.27" width="0.254" layer="94"/>
<text x="-1.905" y="3.175" size="1.778" layer="96">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="GND" urn="urn:adsk.eagle:component:27037/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="GND" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+5V" urn="urn:adsk.eagle:component:27032/1" prefix="SUPPLY" library_version="2">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="+5V" symbol="+05V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="RELAYx8">
<packages>
<package name="RELAY_X8">
<description>8xRelay PCB</description>
<wire x1="0" y1="0" x2="138" y2="0" width="0.127" layer="21"/>
<wire x1="138" y1="0" x2="138" y2="50" width="0.127" layer="21"/>
<wire x1="138" y1="50" x2="0" y2="50" width="0.127" layer="21"/>
<wire x1="0" y1="50" x2="0" y2="0" width="0.127" layer="21"/>
<hole x="1.5" y="1.5" drill="2.8"/>
<hole x="136.5" y="1.5" drill="2.8"/>
<hole x="136.5" y="48.5" drill="2.8"/>
<hole x="1.5" y="48.5" drill="2.8"/>
<pad name="DN1" x="60.57" y="3" drill="1.016" shape="octagon"/>
<pad name="DN2" x="63.11" y="3" drill="1.016" shape="octagon"/>
<pad name="DN3" x="65.65" y="3" drill="1.016" shape="octagon"/>
<pad name="DN4" x="68.19" y="3" drill="1.016" shape="octagon"/>
<pad name="DN5" x="70.73" y="3" drill="1.016" shape="octagon"/>
<pad name="DN6" x="73.27" y="3" drill="1.016" shape="octagon"/>
<pad name="DN7" x="75.81" y="3" drill="1.016" shape="octagon"/>
<pad name="DN8" x="78.35" y="3" drill="1.016" shape="octagon"/>
<pad name="VCC" x="80.89" y="3" drill="1.016" shape="octagon"/>
<pad name="GND" x="58.03" y="3" drill="1.016" shape="octagon"/>
</package>
</packages>
<symbols>
<symbol name="RELAY_X8">
<wire x1="-6.35" y1="0" x2="22.86" y2="0" width="0.254" layer="94"/>
<wire x1="22.86" y1="0" x2="22.86" y2="63.5" width="0.254" layer="94"/>
<wire x1="22.86" y1="63.5" x2="-6.35" y2="63.5" width="0.254" layer="94"/>
<wire x1="-6.35" y1="63.5" x2="-6.35" y2="0" width="0.254" layer="94"/>
<pin name="VCC" x="-11.43" y="55.88" length="middle"/>
<pin name="GND" x="-11.43" y="40.64" length="middle"/>
<pin name="DN1" x="27.94" y="49.53" length="middle" rot="R180"/>
<pin name="DN2" x="27.94" y="43.18" length="middle" rot="R180"/>
<pin name="DN3" x="27.94" y="36.83" length="middle" rot="R180"/>
<pin name="DN4" x="27.94" y="30.48" length="middle" rot="R180"/>
<pin name="DN5" x="27.94" y="24.13" length="middle" rot="R180"/>
<pin name="DN6" x="27.94" y="17.78" length="middle" rot="R180"/>
<pin name="DN7" x="27.94" y="11.43" length="middle" rot="R180"/>
<pin name="DN8" x="27.94" y="5.08" length="middle" rot="R180"/>
<circle x="6.35" y="19.05" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="19.05" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="21.844" x2="6.35" y2="19.05" width="0.254" layer="94"/>
<circle x="6.35" y="6.35" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="6.35" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="9.144" x2="6.35" y2="6.35" width="0.254" layer="94"/>
<circle x="6.35" y="12.7" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="12.7" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="15.494" x2="6.35" y2="12.7" width="0.254" layer="94"/>
<circle x="6.35" y="25.4" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="25.4" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="28.194" x2="6.35" y2="25.4" width="0.254" layer="94"/>
<circle x="6.35" y="31.75" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="31.75" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="34.544" x2="6.35" y2="31.75" width="0.254" layer="94"/>
<circle x="6.35" y="38.1" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="38.1" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="40.894" x2="6.35" y2="38.1" width="0.254" layer="94"/>
<circle x="6.35" y="44.45" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="44.45" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="47.244" x2="6.35" y2="44.45" width="0.254" layer="94"/>
<circle x="6.35" y="50.8" radius="0.567959375" width="0.254" layer="94"/>
<circle x="12.192" y="50.8" radius="0.567959375" width="0.254" layer="94"/>
<wire x1="12.446" y1="53.594" x2="6.35" y2="50.8" width="0.254" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RELAY_X8">
<gates>
<gate name="G$1" symbol="RELAY_X8" x="-35.56" y="-22.86"/>
</gates>
<devices>
<device name="" package="RELAY_X8">
<connects>
<connect gate="G$1" pin="DN1" pad="DN1"/>
<connect gate="G$1" pin="DN2" pad="DN2"/>
<connect gate="G$1" pin="DN3" pad="DN3"/>
<connect gate="G$1" pin="DN4" pad="DN4"/>
<connect gate="G$1" pin="DN5" pad="DN5"/>
<connect gate="G$1" pin="DN6" pad="DN6"/>
<connect gate="G$1" pin="DN7" pad="DN7"/>
<connect gate="G$1" pin="DN8" pad="DN8"/>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="VCC" pad="VCC"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U$1" library="dforbot" library_urn="urn:adsk.eagle:library:37745597" deviceset="PH_METER_V2.0" device="" package3d_urn="urn:adsk.eagle:package:37745600/3"/>
<part name="IC1" library="Raspberry_Pi_Zero_W__v1.3_" deviceset="RASPBERRY_PI_ZERO_W__V1.3_" device=""/>
<part name="U$2" library="Arduino-clone" deviceset="PRO-MINI" device=""/>
<part name="PH_PROBE" library="pinhead" library_urn="urn:adsk.eagle:library:325" deviceset="PINHD-1X3" device="" package3d_urn="urn:adsk.eagle:package:22458/2"/>
<part name="SUPPLY1" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY2" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY3" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY4" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY5" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY6" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY7" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY8" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
<part name="SUPPLY9" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY10" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY11" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY12" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY13" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="U$3" library="RELAYx8" deviceset="RELAY_X8" device=""/>
<part name="SUPPLY14" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="GND" device=""/>
<part name="SUPPLY15" library="supply2" library_urn="urn:adsk.eagle:library:372" deviceset="+5V" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U$1" gate="G$1" x="-17.78" y="53.34" smashed="yes">
<attribute name="VALUE" x="-17.78" y="50.8" size="1.778" layer="96"/>
</instance>
<instance part="IC1" gate="G$1" x="53.34" y="86.36" smashed="yes">
<attribute name="NAME" x="123.19" y="93.98" size="1.778" layer="95" align="center-left"/>
<attribute name="VALUE" x="123.19" y="91.44" size="1.778" layer="96" align="center-left"/>
</instance>
<instance part="U$2" gate="G$1" x="200.66" y="48.26" smashed="yes"/>
<instance part="PH_PROBE" gate="A" x="-12.7" y="40.64" smashed="yes" rot="R90">
<attribute name="NAME" x="-18.415" y="34.29" size="1.778" layer="95" rot="R90"/>
<attribute name="VALUE" x="-5.08" y="34.29" size="1.778" layer="96" rot="R90"/>
</instance>
<instance part="SUPPLY1" gate="GND" x="33.02" y="35.56" smashed="yes">
<attribute name="VALUE" x="31.115" y="32.385" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY2" gate="GND" x="-7.62" y="25.4" smashed="yes">
<attribute name="VALUE" x="-9.525" y="22.225" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY3" gate="GND" x="246.38" y="63.5" smashed="yes">
<attribute name="VALUE" x="244.475" y="60.325" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY4" gate="GND" x="187.96" y="86.36" smashed="yes" rot="R270">
<attribute name="VALUE" x="184.785" y="88.265" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="SUPPLY5" gate="GND" x="170.18" y="58.42" smashed="yes">
<attribute name="VALUE" x="168.275" y="55.245" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY6" gate="+5V" x="-12.7" y="17.78" smashed="yes" rot="R180">
<attribute name="VALUE" x="-10.795" y="14.605" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY7" gate="+5V" x="33.02" y="81.28" smashed="yes" rot="R180">
<attribute name="VALUE" x="34.925" y="78.105" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY8" gate="+5V" x="246.38" y="58.42" smashed="yes" rot="R180">
<attribute name="VALUE" x="245.745" y="55.245" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="SUPPLY9" gate="GND" x="142.24" y="43.18" smashed="yes">
<attribute name="VALUE" x="140.335" y="40.005" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY10" gate="GND" x="142.24" y="55.88" smashed="yes">
<attribute name="VALUE" x="140.335" y="52.705" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY11" gate="GND" x="142.24" y="66.04" smashed="yes">
<attribute name="VALUE" x="140.335" y="62.865" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY12" gate="GND" x="142.24" y="78.74" smashed="yes">
<attribute name="VALUE" x="140.335" y="75.565" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY13" gate="GND" x="33.02" y="50.8" smashed="yes">
<attribute name="VALUE" x="31.115" y="47.625" size="1.778" layer="96"/>
</instance>
<instance part="U$3" gate="G$1" x="66.04" y="-55.88" smashed="yes"/>
<instance part="SUPPLY14" gate="GND" x="53.34" y="-20.32" smashed="yes">
<attribute name="VALUE" x="51.435" y="-23.495" size="1.778" layer="96"/>
</instance>
<instance part="SUPPLY15" gate="+5V" x="53.34" y="-5.08" smashed="yes" rot="R180">
<attribute name="VALUE" x="55.245" y="-8.255" size="1.778" layer="96" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="PH_ANALOG_OUT" class="0">
<segment>
<pinref part="PH_PROBE" gate="A" pin="1"/>
<wire x1="-15.24" y1="38.1" x2="-15.24" y2="27.94" width="0.1524" layer="91"/>
<junction x="-15.24" y="27.94"/>
<label x="-17.78" y="27.94" size="1.778" layer="95" rot="R270"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="A0"/>
<wire x1="218.44" y1="50.8" x2="226.06" y2="50.8" width="0.1524" layer="91"/>
<junction x="226.06" y="50.8"/>
<label x="248.92" y="50.8" size="1.778" layer="95" rot="R180"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="PH_PROBE" gate="A" pin="3"/>
<wire x1="-10.16" y1="38.1" x2="-10.16" y2="27.94" width="0.1524" layer="91"/>
<label x="-7.62" y="27.94" size="1.778" layer="95"/>
<junction x="-10.16" y="27.94"/>
<pinref part="SUPPLY2" gate="GND" pin="GND"/>
<wire x1="-10.16" y1="27.94" x2="-7.62" y2="27.94" width="0.1524" layer="91"/>
<junction x="-7.62" y="27.94"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_4"/>
<junction x="53.34" y="38.1"/>
<pinref part="SUPPLY1" gate="GND" pin="GND"/>
<wire x1="53.34" y1="38.1" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_8"/>
<wire x1="127" y1="45.72" x2="142.24" y2="45.72" width="0.1524" layer="91"/>
<junction x="142.24" y="45.72"/>
<pinref part="SUPPLY9" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_7"/>
<wire x1="127" y1="58.42" x2="142.24" y2="58.42" width="0.1524" layer="91"/>
<junction x="142.24" y="58.42"/>
<pinref part="SUPPLY10" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_6"/>
<wire x1="127" y1="68.58" x2="142.24" y2="68.58" width="0.1524" layer="91"/>
<junction x="142.24" y="68.58"/>
<pinref part="SUPPLY11" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_5"/>
<wire x1="127" y1="81.28" x2="142.24" y2="81.28" width="0.1524" layer="91"/>
<junction x="142.24" y="81.28"/>
<pinref part="SUPPLY12" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND2"/>
<pinref part="SUPPLY5" gate="GND" pin="GND"/>
<wire x1="177.8" y1="60.96" x2="170.18" y2="60.96" width="0.1524" layer="91"/>
<junction x="170.18" y="60.96"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND4"/>
<wire x1="193.04" y1="83.82" x2="193.04" y2="86.36" width="0.1524" layer="91"/>
<wire x1="193.04" y1="86.36" x2="195.58" y2="86.36" width="0.1524" layer="91"/>
<pinref part="U$2" gate="G$1" pin="GND3"/>
<wire x1="195.58" y1="86.36" x2="195.58" y2="83.82" width="0.1524" layer="91"/>
<pinref part="SUPPLY4" gate="GND" pin="GND"/>
<wire x1="193.04" y1="86.36" x2="190.5" y2="86.36" width="0.1524" layer="91"/>
<junction x="193.04" y="86.36"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="GND"/>
<wire x1="218.44" y1="66.04" x2="246.38" y2="66.04" width="0.1524" layer="91"/>
<junction x="246.38" y="66.04"/>
<pinref part="SUPPLY3" gate="GND" pin="GND"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GND_3"/>
<pinref part="SUPPLY13" gate="GND" pin="GND"/>
<wire x1="53.34" y1="53.34" x2="33.02" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="GND"/>
<wire x1="54.61" y1="-15.24" x2="53.34" y2="-15.24" width="0.1524" layer="91"/>
<pinref part="SUPPLY14" gate="GND" pin="GND"/>
<wire x1="53.34" y1="-15.24" x2="53.34" y2="-17.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="+5V" class="0">
<segment>
<pinref part="PH_PROBE" gate="A" pin="2"/>
<wire x1="-12.7" y1="38.1" x2="-12.7" y2="27.94" width="0.1524" layer="91"/>
<junction x="-12.7" y="27.94"/>
<pinref part="SUPPLY6" gate="+5V" pin="+5V"/>
<wire x1="-12.7" y1="27.94" x2="-12.7" y2="20.32" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="+5V_1"/>
<pinref part="SUPPLY7" gate="+5V" pin="+5V"/>
<wire x1="53.34" y1="83.82" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<junction x="53.34" y="83.82"/>
<junction x="33.02" y="83.82"/>
<label x="45.72" y="83.82" size="1.778" layer="95"/>
<pinref part="IC1" gate="G$1" pin="+5V_2"/>
<wire x1="38.1" y1="83.82" x2="33.02" y2="83.82" width="0.1524" layer="91"/>
<wire x1="53.34" y1="78.74" x2="38.1" y2="78.74" width="0.1524" layer="91"/>
<wire x1="38.1" y1="78.74" x2="38.1" y2="83.82" width="0.1524" layer="91"/>
<junction x="38.1" y="83.82"/>
</segment>
<segment>
<pinref part="U$2" gate="G$1" pin="VCC"/>
<wire x1="218.44" y1="60.96" x2="246.38" y2="60.96" width="0.1524" layer="91"/>
<pinref part="SUPPLY8" gate="+5V" pin="+5V"/>
<junction x="246.38" y="60.96"/>
</segment>
<segment>
<pinref part="U$3" gate="G$1" pin="VCC"/>
<pinref part="SUPPLY15" gate="+5V" pin="+5V"/>
<wire x1="54.61" y1="0" x2="53.34" y2="0" width="0.1524" layer="91"/>
<wire x1="53.34" y1="0" x2="53.34" y2="-2.54" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ARD_RST" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="RST"/>
<wire x1="218.44" y1="63.5" x2="220.98" y2="63.5" width="0.1524" layer="91"/>
<junction x="220.98" y="63.5"/>
<label x="220.98" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GPIO12/PWM0"/>
<wire x1="127" y1="63.5" x2="132.08" y2="63.5" width="0.1524" layer="91"/>
<junction x="132.08" y="63.5"/>
<label x="132.08" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARD_SCK" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D13"/>
<wire x1="218.44" y1="48.26" x2="226.06" y2="48.26" width="0.1524" layer="91"/>
<junction x="226.06" y="48.26"/>
<label x="226.06" y="48.26" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GPIO_24"/>
<wire x1="53.34" y1="43.18" x2="48.26" y2="43.18" width="0.1524" layer="91"/>
<junction x="48.26" y="43.18"/>
<label x="40.64" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARD_MISO" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D12"/>
<wire x1="218.44" y1="45.72" x2="226.06" y2="45.72" width="0.1524" layer="91"/>
<junction x="226.06" y="45.72"/>
<label x="226.06" y="45.72" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GPIO_18/PWM0/SPI1_CS0"/>
<wire x1="53.34" y1="58.42" x2="48.26" y2="58.42" width="0.1524" layer="91"/>
<junction x="48.26" y="58.42"/>
<label x="35.56" y="58.42" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARD_MOSI" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D11"/>
<wire x1="218.44" y1="43.18" x2="226.06" y2="43.18" width="0.1524" layer="91"/>
<junction x="226.06" y="43.18"/>
<label x="226.06" y="43.18" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="G$1" pin="GPIO_23"/>
<wire x1="53.34" y1="48.26" x2="48.26" y2="48.26" width="0.1524" layer="91"/>
<junction x="48.26" y="48.26"/>
<label x="40.64" y="48.26" size="1.778" layer="95"/>
</segment>
</net>
<net name="ARD_SS" class="0">
<segment>
<pinref part="U$2" gate="G$1" pin="D10"/>
<wire x1="218.44" y1="40.64" x2="226.06" y2="40.64" width="0.1524" layer="91"/>
<junction x="226.06" y="40.64"/>
<label x="226.06" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>

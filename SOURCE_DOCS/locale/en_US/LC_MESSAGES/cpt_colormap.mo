��          �               �  2   �  <   �  -   �     +  !   J  *   l     �      �  "  �     �     �  $        ;  U   H  :   �  	   �     �  $   �               7     >  �  Y  6   �  :   *  2   e     �  !   �  7   �     	  $   -	  "  R	     u     |  %   �     �  U   �  :   &     a  	   h      r     �     �     �     �   ``basemap`` - 設定繪圖區、座標軸與邊框 ``clip`` - **只在給定的多邊形區域內繪製資料** ``coast`` - 繪製海岸線與陸海域填色 ``colorbar`` - 繪製色階條 ``grdimage`` - 繪製著色影像 ``makecpt`` - **製作與修改色階表** ``plot`` - 繪製多邊形 ``text`` - 在圖上標記文字 speed_file=ICE_G0240_0000_v_EPSG4326.nc
glacier_outline=glims_iceland_glacier_outlines.gmt

gmt begin iceland_glacier_speed png
    gmt basemap -Baf -BWNEs -RIS+R0.2 -JM15c
    gmt coast -Wthinnest,darkred -Gdarkseagreen1 -Slightblue -A1
    gmt clip $glacier_outline
    gmt makecpt -Cbatlow -T0/400/10 -D -Z -M --COLOR_NAN=gray
    gmt grdimage $speed_file
    gmt clip -C
    gmt plot $glacier_outline -Wthinner,black
    gmt colorbar -DJCB+w6c+ef -Bx100+l"Glacier Speed (m/yr)"
    echo -16.8 64.95 Vatnajökull | gmt text -F+f12p+jCM
gmt end 「」 使用的指令與概念 使用色階表為網格資料著色 前置作業 外部指令 ``gdalwarp`` - **把網格資料重投影，並轉檔成 NetCDF 格式** 如何解釋色階表 (CPT, color palette table) 的內容 指令稿 操作流程 本地圖的最終指令稿如下： 目標 直接觀看\ `指令稿`_ 習題 觀看\ `最終版地圖`_ Project-Id-Version: GMT 教學手冊 1.2
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-12-25 19:15-0500
PO-Revision-Date: 2019-12-26 01:22+0000
Last-Translator: Whyjay Zheng <jhsttshj@gmail.com>
Language: en_US
Language-Team: English (United States)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 ``basemap`` - set up mapping area, axes, and map frame ``clip`` - **only plot data within given polygon regions** ``coast`` - plot shorelines and fill land/sea area ``colorbar`` - plot color bar ``grdimage`` - plot colored image ``makecpt`` - **Make and adjust a color palette table** ``plot`` - **plot polygons** ``text`` - Make text labels in a map speed_file=ICE_G0240_0000_v_EPSG4326.nc
glacier_outline=glims_iceland_glacier_outlines.gmt

gmt begin iceland_glacier_speed png
    gmt basemap -Baf -BWNEs -RIS+R0.2 -JM15c
    gmt coast -Wthinnest,darkred -Gdarkseagreen1 -Slightblue -A1
    gmt clip $glacier_outline
    gmt makecpt -Cbatlow -T0/400/10 -D -Z -M --COLOR_NAN=gray
    gmt grdimage $speed_file
    gmt clip -C
    gmt plot $glacier_outline -Wthinner,black
    gmt colorbar -DJCB+w6c+ef -Bx100+l"Glacier Speed (m/yr)"
    echo -16.8 64.95 Vatnajökull | gmt text -F+f12p+jCM
gmt end 「」 Commands and Techniques Visualize Raster Data Using Colormaps Tasks before plotting 外部指令 ``gdalwarp`` - **把網格資料重投影，並轉檔成 NetCDF 格式** 如何解釋色階表 (CPT, color palette table) 的內容 Script Procedure The final script for our map is: Goal Go to the final `Script`_ Exercise Check the `final map`_ 
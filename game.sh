# VK_LAYER_PATH=$PWD 
export WINEDEBUG=+vulkan 
# /home/leegao/Games/Bread.and.Fred.Build.19740907/Bread&Fred.exe
DXVK_LOG_PATH=$PWD DXVK_LOG_LEVEL=debug DXVK_HUD=1 WINEDLLOVERRIDES="d3d11,d3d9,d3d10core,d3d8,dxgi=n,b" WINEPREFIX=$PWD/wineprefix wine "/home/leegao/Games/Knightica/Knightica.exe" 2>winelog.txt > log.txt

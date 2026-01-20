cd build.64
ninja install
cd -

cd build.32
ninja install
cd -

# Invariant here is that build_dxvk has system32/bin and syswow64/bin
# Create a new build_dxvk
function package {
  cd build_dxvk

  rm -rf packaging
  mkdir -p packaging
  cp -r system32/bin packaging/system32
  cp -r syswow64/bin packaging/syswow64

  cd packaging
  tar -cvf dxvk-2.6.1.tar system32 syswow64
  zstd dxvk-2.6.1.tar -o dxvk-2.6.1.tzst
  cd ../../

  echo "Copying..."
  cp build_dxvk/packaging/system32/* wineprefix/drive_c/windows/system32/
  cp build_dxvk/packaging/syswow64/* wineprefix/drive_c/windows/syswow64/
}

package

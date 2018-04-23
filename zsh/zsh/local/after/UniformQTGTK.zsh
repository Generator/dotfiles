# Uniform look for Qt and GTK applications
# https://wiki.archlinux.org/index.php/Uniform_look_for_Qt_and_GTK_applications
if [ -z $QT_QPA_PLATFORMTHEME ]; then
    export QT_QPA_PLATFORMTHEME=gtk2
fi    

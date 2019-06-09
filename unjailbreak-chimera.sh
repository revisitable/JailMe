if [ "$EUID" -ne 0 ]; then
  echo "ERROR! You are not logged in as root user!"
  echo "Please login as root user before executing JailMe."
  exit
fi

echo "JailMe by Sukarodo for Chimera"
echo "This seperate version is for testing until the decision of this being stable"
echo "Once it is tested, this will be merged with JailMe as a whole"
echo "Assuming you have not installed any other jailbreak or modified the rootfs directly yourself, you should be on stock iOS once this is complete."
read -p "Press enter to continue. Press Ctrl + C to exit"

echo "Killing Sileo..."
killall Sileo

echo "Killing Cydia... (If Diatrus' Version Is Installed)"
killall Cydia

cask "hattrix" do
  version "1.0.0"
  sha256 "PASTE_YOUR_SHA256_HERE"

  url "https://github.com/Malaber/hattrix/releases/download/v#{version}/Hattrix.zip"
  name "Hattrix"
  desc "Malaber's Hat of Trix: Teams Mute Toggle & Utilities"
  homepage "https://github.com/Malaber/hattrix"

  app "Hattrix.app"

  # Tells Brew to quell the app before uninstalling
  uninstall quit: "com.malaber.hattrix"

  # Cleans up the preferences file on uninstall
  zap trash: [
    "~/Library/Preferences/com.malaber.hattrix.plist",
  ]
end

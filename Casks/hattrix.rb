cask "hattrix" do
  version "1.0.4"
  sha256 "216b91c029ea6dc043e5df6749dbd57c9961a49c335a9eb368c9334d73d63137"

  url "https://github.com/Malaber/hattrix/releases/download/v1.0.4/Hattrix.zip"
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

cask "resonant" do
  version "0.1.75"
  sha256 "5b8dab9c1a835207be975f94cc8adabcabd7315f6461c7a72bfdb12a9bee827e"

  url "https://downloads.onresonant.com/Resonant-latest-arm64.dmg"
  name "Resonant"
  desc "Voice-first productivity app for macOS"
  homepage "https://onresonant.com"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Resonant.app"

  zap trash: [
    "~/Library/Application Support/Resonant",
    "~/Library/Caches/com.resonance.resonant",
    "~/Library/Preferences/com.resonance.resonant.plist",
  ]
end

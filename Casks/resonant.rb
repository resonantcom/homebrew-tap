cask "resonant" do
  version "0.1.93"
  sha256 "5047a6894334e0b6857bc4a7311e022d77ad3ba983160b99f68d14d52929d7d9"

  url "https://downloads.onresonant.com/Resonant-0.1.93-build-20260807072919-arm64.dmg"
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

cask "resonant" do
  version "0.1.97"
  sha256 "f76b6130b3558d157fac1dc8d46f9b53a78eddad72d420156914c2fc67f1768e"

  url "https://downloads.onresonant.com/Resonant-0.1.97-build-20261008210019-arm64.dmg"
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

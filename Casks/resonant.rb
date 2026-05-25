cask "resonant" do
  version "0.1.79"
  sha256 "10554d966e824c057fa4fe2e1637ddf8b91c535f6bd061c3dcceb491892c63a8"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260525090910-arm64.dmg"
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

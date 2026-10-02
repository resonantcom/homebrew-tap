cask "resonant" do
  version "0.1.95"
  sha256 "6027bddb0ee2d10d723ea855063fe0f6d1096d9e61eba94cba6eff15d3984b01"

  url "https://downloads.onresonant.com/Resonant-0.1.95-build-20261002124853-arm64.dmg"
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

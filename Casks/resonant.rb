cask "resonant" do
  version "0.1.102"
  sha256 "754d0513e034bc5d4d9cc745c8a653505f13dfd9da75d2d02a1ea0ee3ba4808d"

  url "https://downloads.onresonant.com/Resonant-0.1.102-build-20261029075005-arm64.dmg"
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

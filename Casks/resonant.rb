cask "resonant" do
  version "0.1.64"
  sha256 "85e96c485bda15b4ab6c517c22aff2f69ceef0167c6e22824f5caae222484b77"

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

cask "resonant" do
  version "0.1.75"
  sha256 "20458bb57b43dfe03df8a94802c2d78aa4b1925d144a5dfb497c56889552fab4"

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

cask "resonant" do
  version "0.1.79"
  sha256 "e788cfacac43f710c6aa02bd91f1c6e1c8b9121b5198049c39329731e4b3611a"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260527103811-arm64.dmg"
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

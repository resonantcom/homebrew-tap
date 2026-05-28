cask "resonant" do
  version "0.1.79"
  sha256 "9b00d0983bcb0cdad34def58270e78192ba9e04f8a26b6a5ae35670968eb9f74"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260528065711-arm64.dmg"
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

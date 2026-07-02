cask "resonant" do
  version "0.1.88"
  sha256 "4347dc35c94ef25f403c76e24f3a6ac1cb713580670188b532793df22728b6f5"

  url "https://downloads.onresonant.com/Resonant-0.1.88-build-20260702080926-arm64.dmg"
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

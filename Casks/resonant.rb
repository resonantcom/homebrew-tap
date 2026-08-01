cask "resonant" do
  version "0.1.91"
  sha256 "e8121fef5a3858becb961e528098f248521a55f2402ca1209d2ddddca1655ebb"

  url "https://downloads.onresonant.com/Resonant-0.1.91-build-20260801084633-arm64.dmg"
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

cask "resonant" do
  version "0.1.68"
  sha256 "01bf36c52db83bb6cac03884a50dc7e6f351e0f59109eeca71ebf4ae856c490e"

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

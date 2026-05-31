cask "resonant" do
  version "0.1.80"
  sha256 "85e2458e0fabfc317b84dce5dc2b3a03b67c8e728a7d9849708530ad775f1ef0"

  url "https://downloads.onresonant.com/Resonant-0.1.80-build-20260531073733-arm64.dmg"
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

cask "resonant" do
  version "0.1.81"
  sha256 "2478e7b1a8f300805ca4c733be18a5f37d2dd23bd55f8ac0a3493fbbfa17e40b"

  url "https://downloads.onresonant.com/Resonant-0.1.81-build-20260604070656-arm64.dmg"
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

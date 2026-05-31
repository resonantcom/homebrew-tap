cask "resonant" do
  version "0.1.81"
  sha256 "034b5d39549cd05ed8d10226faae0a2df1f6fd29a9c9876b3268b98b05c6d678"

  url "https://downloads.onresonant.com/Resonant-0.1.81-build-20260531133317-arm64.dmg"
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

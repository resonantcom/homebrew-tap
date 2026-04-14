cask "resonant" do
  version "0.1.71"
  sha256 "5d16ea92e45b0780393217d2ee933a5612486ff1ef6dd18f1f80e93e4b7a5573"

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

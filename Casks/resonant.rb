cask "resonant" do
  version "0.1.103"
  sha256 "c34b643e148bfa9b7751fe52a4d97b257751c7f13b0fddd6981980e54828432a"

  url "https://downloads.onresonant.com/Resonant-0.1.103-build-20261029091833-arm64.dmg"
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

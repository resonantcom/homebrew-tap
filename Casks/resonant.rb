cask "resonant" do
  version "0.1.101"
  sha256 "56bda546da800de6eb4dc7e7e5fc596ba85e812dc8f1ad6176b36dd51d4d2e40"

  url "https://downloads.onresonant.com/Resonant-0.1.101-build-20261028130838-arm64.dmg"
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

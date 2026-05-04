cask "resonant" do
  version "0.1.77"
  sha256 "c6d03470bf035a7b83314a105f3ac2e6bbe1cbc0c61ac1a2bb2f426b7e3e8a0b"

  url "https://downloads.onresonant.com/Resonant-0.1.77-build-20260501095115-arm64.dmg"
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

cask "resonant" do
  version "0.1.79"
  sha256 "422bd7a1d4b053ad7bd44f0d91f53df06a92994adebad02eb7ad66891871c364"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260525112420-arm64.dmg"
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

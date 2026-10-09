cask "resonant" do
  version "0.1.99"
  sha256 "137aab1d7ea2f61d33f20dc6d84a1dee876c70352ae78f45818567c45660a768"

  url "https://downloads.onresonant.com/Resonant-0.1.99-build-20261009153124-arm64.dmg"
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

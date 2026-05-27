cask "resonant" do
  version "0.1.79"
  sha256 "d2c714cc797f2f11627e63e9ddb8f5fa9d029d0485ee8f891a8a65de4c4c2e9a"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260527100930-arm64.dmg"
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

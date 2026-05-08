cask "resonant" do
  version "0.1.78"
  sha256 "094cb14e3272718c0d912ab3a4e51d970242dfd7881fd50c3ca837a236a44946"

  url "https://downloads.onresonant.com/Resonant-0.1.78-build-20260508162228-arm64.dmg"
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

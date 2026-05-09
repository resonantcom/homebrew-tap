cask "resonant" do
  version "0.1.78"
  sha256 "e1e7c7f765dc3fe36a615a49a647e0acb3a268244695581bf3a603203ac69d47"

  url "https://downloads.onresonant.com/Resonant-0.1.78-build-20260509092951-arm64.dmg"
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

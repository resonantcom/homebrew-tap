cask "resonant" do
  version "0.1.79"
  sha256 "58548021aa9a0c7b0f7bc8f3193241d569109b6281483181afebddf8a684e0bb"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260527065931-arm64.dmg"
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

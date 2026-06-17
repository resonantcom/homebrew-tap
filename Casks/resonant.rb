cask "resonant" do
  version "0.1.82"
  sha256 "55bb13a979b0c7b64e0fce8257bea72f37be8c9fa54a5e38c3207c293b7cd44c"

  url "https://downloads.onresonant.com/Resonant-0.1.82-build-20260617120749-arm64.dmg"
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

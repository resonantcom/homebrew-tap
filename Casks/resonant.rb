cask "resonant" do
  version "0.1.82"
  sha256 "c6a5170fcdff5d48577a30ffb8aa14322f5eb43aef85fbbe477634d1a5b518b3"

  url "https://downloads.onresonant.com/Resonant-0.1.82-build-20260616093615-arm64.dmg"
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

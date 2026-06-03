cask "resonant" do
  version "0.1.81"
  sha256 "f16dfdb684e8ebbde358d80e1cc8b1716a22ce8f5718944a06c5ab31a1a2824a"

  url "https://downloads.onresonant.com/Resonant-0.1.81-build-20260603195147-arm64.dmg"
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

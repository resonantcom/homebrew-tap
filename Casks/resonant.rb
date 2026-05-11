cask "resonant" do
  version "0.1.78"
  sha256 "44c4947c986622d2c5c8d4eb9c042890cf9354dbab78ab131402ee215e17314b"

  url "https://downloads.onresonant.com/Resonant-0.1.78-build-20260511080239-arm64.dmg"
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

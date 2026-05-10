cask "resonant" do
  version "0.1.78"
  sha256 "d19ea67574c53becc5589c999f9d4d073011c7c5d8338c026d5dc4cbe8299699"

  url "https://downloads.onresonant.com/Resonant-0.1.78-build-20260510163930-arm64.dmg"
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

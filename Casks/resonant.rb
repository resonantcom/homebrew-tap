cask "resonant" do
  version "0.1.90"
  sha256 "34844cc9233e65d49cebe5bb1e1ee22281e5c74342a76f9621771af673005cf0"

  url "https://downloads.onresonant.com/Resonant-0.1.90-build-20260731191810-arm64.dmg"
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

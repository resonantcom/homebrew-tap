cask "resonant" do
  version "0.1.82"
  sha256 "b21487cb5002e43ce1fe40bc6393fff7a8f1e2ab6e2b18d302b446029577b77b"

  url "https://downloads.onresonant.com/Resonant-0.1.82-build-20260610090636-arm64.dmg"
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

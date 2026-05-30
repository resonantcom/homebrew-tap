cask "resonant" do
  version "0.1.79"
  sha256 "d46dc01f2e2aa7adf509dcf7f6f54d56753cb82ad259d8819c8d5af47240c77b"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260530001402-arm64.dmg"
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

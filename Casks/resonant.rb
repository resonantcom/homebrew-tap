cask "resonant" do
  version "0.1.92"
  sha256 "5bd84d83d967cac650e7c4297b7c84f2be1fe6b2ed018937ff230e142ac6fe7c"

  url "https://downloads.onresonant.com/Resonant-0.1.92-build-20260807065058-arm64.dmg"
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

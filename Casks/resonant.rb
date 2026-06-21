cask "resonant" do
  version "0.1.83"
  sha256 "abfe6de34710be9f683dafd4d72cf3af3003c7a4198e1f7e21f684ad84dc7fd1"

  url "https://downloads.onresonant.com/Resonant-0.1.83-build-20260621144027-arm64.dmg"
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

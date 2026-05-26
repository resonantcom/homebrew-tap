cask "resonant" do
  version "0.1.79"
  sha256 "b4f19865703f1626cd671b60149e614f330ecc1e7c87dbb352547e5ae12bfb4f"

  url "https://downloads.onresonant.com/Resonant-0.1.79-build-20260526165012-arm64.dmg"
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

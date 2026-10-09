cask "resonant" do
  version "0.1.98"
  sha256 "b6aa4303625a0b6711902a6ec38979a9e957aeea7742785fb531ef8a19e569bd"

  url "https://downloads.onresonant.com/Resonant-0.1.98-build-20261009121648-arm64.dmg"
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

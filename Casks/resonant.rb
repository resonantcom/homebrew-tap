cask "resonant" do
  version "0.1.104"
  sha256 "ab82e54c613ae8682337fe6a5493b91d8559169fe74dbb1b9840952667a7768b"

  url "https://downloads.onresonant.com/Resonant-0.1.104-build-20261101140631-arm64.dmg"
  name "Resonant"
  desc "Voice-first productivity app"
  homepage "https://onresonant.com/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Resonant.app"

  zap trash: [
    "~/Library/Application Support/Resonant",
    "~/Library/Caches/com.resonance.resonant",
    "~/Library/Preferences/com.resonance.resonant.plist",
  ]
end

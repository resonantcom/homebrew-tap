cask "resonant" do
  version "0.1.96"
  sha256 "76d7a80fbb1fd219953b4ebc671fffa4a673c75e29df20fca48e0c5106c38032"

  url "https://downloads.onresonant.com/Resonant-0.1.96-build-20261008161104-arm64.dmg"
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

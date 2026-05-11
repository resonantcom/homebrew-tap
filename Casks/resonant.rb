cask "resonant" do
  version "0.1.78"
  sha256 "f7beeb523b3a9da8f4f6a98490f133affb81ccd20496a41ae4d46939ae016b6c"

  url "https://downloads.onresonant.com/Resonant-0.1.78-build-20260511173511-arm64.dmg"
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

cask "resonant" do
  version "0.1.81"
  sha256 "ab395cca49bbc84e83b06071832541241e8e06f272f134a0795fa43cb60cd095"

  url "https://downloads.onresonant.com/Resonant-0.1.81-build-20260603060850-arm64.dmg"
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

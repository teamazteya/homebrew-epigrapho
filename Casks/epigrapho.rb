cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "e0a3a371db1e0d9b92ee0264c9f4631adaf60df6a49b030e9c80113de65cb401",
         intel: "6f987b6b8f77d728a5dcae3b3c558df3400a2e2d8500e6343459dbd72aade1e7"

  # Each version is a GitHub release of teamazteya/epigrapho. After tagging
  # a new one, set its version and the sha256 of both zips here.
  url "https://github.com/teamazteya/epigrapho/releases/download/v#{version}/epigrapho_mac_#{arch}.zip"
  name "Epigrapho"
  desc "Private notes that understand Bible references"
  homepage "https://github.com/teamazteya/epigrapho"

  depends_on :macos

  app "Epigrapho.app"

  zap trash: [
    "~/Library/Application Support/Epigrapho",
    "~/Library/Caches/epigrapho-desktop-updater",
    "~/Library/Logs/Epigrapho",
    "~/Library/Preferences/org.epigrapho.app.plist",
    "~/Library/Saved Application State/org.epigrapho.app.savedState",
  ]

  caveats <<~EOS
    Epigrapho is not signed by Apple yet. The first time it opens, macOS
    will refuse; allow it once in System Settings > Privacy & Security >
    Open Anyway.
  EOS
end

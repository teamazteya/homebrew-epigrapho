cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "1.0.0"
  sha256 arm:   "a1b90f854b5022639c18aa5736f00e1f67d074062d9f7530b3de1807d82e249f",
         intel: "4c362c98415cb8fe965a27e4cb5cf981f448987fd100bfd1f22760a24d77a8d3"

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

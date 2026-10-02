cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "f6434f085b23c2910d772df966687c75eb53292eaee397173831d2e34a687207",
         intel: "db2f9bf1bdd9f30d774c45abe44dd3627b5659af121e2e2c1752a0c153a7550e"

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

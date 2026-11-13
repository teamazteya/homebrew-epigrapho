cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "1.6.1"
  sha256 arm:   "731411c74b826f3564239bb8439d3a1e1c12b838eb7577c957e1fa7887ed20a9",
         intel: "05b82c11625faa0aa7c638d032194d15abe9b309584f6a373edb636868feb9f7"

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

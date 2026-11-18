cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm:   "197df558a9fb911f0d90729e7d0ec98481b5eec353823f49bddd3ac5259562d0",
         intel: "9a9575dceeb2addead3be769de025e38bb26b902373828bd3253001f2ce83197"

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

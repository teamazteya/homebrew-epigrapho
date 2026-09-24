cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "3.4.8"
  sha256 arm:   "062fdf2fbc8499232416418e776f294319712f5726d4296fc753088cd28c2d80",
         intel: "8eeb3b8edeca55e28887883f56ee881d0c2acec3c45eac2e51be27e04387a2ee"

  # The files on SourceForge keep one name across releases, so the checksums
  # change with each upload and are updated here with it (see README).
  url "https://downloads.sourceforge.net/epigrapho/epigrapho_mac_#{arch}.zip"
  name "Epigrapho"
  desc "Private notes that understand Bible references"
  homepage "https://github.com/teamazteya/epigrapho"

  depends_on macos: ">= :big_sur"

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

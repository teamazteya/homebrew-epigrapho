cask "epigrapho" do
  arch arm: "arm64", intel: "x64"

  version "3.4.8"
  sha256 arm:   "c838e3bbc31d7150ee4e27c37c61b7451adb6aeca0e969e2f9c6764ad4b5a541",
         intel: "42491a863d2351ca3bbe6b054cf6682429d7515e4d6f4c611eeb3481f86a656a"

  # The files on SourceForge keep one name across releases, so the checksums
  # change with each upload and are updated here with it (see README).
  url "https://downloads.sourceforge.net/epigrapho/epigrapho_mac_#{arch}.zip",
      verified: "downloads.sourceforge.net/epigrapho/"
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

cask "topnotes" do
  version "0.1.0"
  sha256 "0772b989f2c6a901f44aeb99029ac428c019442020bfe9af55f34c8bbed88753"

  url "https://github.com/ChandanJnv/TopNotes/releases/download/v#{version}/TopNotes-#{version}-mac.zip"
  name "TopNotes"
  desc "Light-weight macOS notepad with always-on-top support"
  homepage "https://github.com/ChandanJnv/TopNotes"

  app "TopNotes.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TopNotes.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/TopNotes",
    "~/Library/Preferences/com.chandanjnv.topnotes.plist",
    "~/Library/Saved Application State/com.chandanjnv.topnotes.savedState"
  ]

  caveats <<~EOS
    This app is open-source and currently unsigned/not notarized.

    If macOS blocks it:
      1. Open System Settings → Privacy & Security
      2. Click "Open Anyway"

    Or run:
      xattr -dr com.apple.quarantine /Applications/TopNotes.app
  EOS
end

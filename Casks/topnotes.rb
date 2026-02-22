cask "topnotes" do
  version "0.1.0"
  sha256 "0772b989f2c6a901f44aeb99029ac428c019442020bfe9af55f34c8bbed88753"

  url "https://github.com/ChandanJnv/TopNotes/releases/download/v#{version}/TopNotes-#{version}-mac.zip"
  name "TopNotes"
  desc "Light-weight macOS notepad with always on top feature"
  homepage "https://github.com/ChandanJnv/TopNotes"

  app "TopNotes.app"

  caveats <<~EOS
    This app is unsigned and not notarized.
    If macOS blocks it:

    1. Open System Settings
    2. Go to Privacy & Security
    3. Click "Open Anyway"
  EOS
end

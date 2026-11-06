cask "mushroom" do
  # Always the current release: the stable alias, which release.sh replaces every release. Sparkle updates
  # installed copies, so this tap never needs a version bump.
  version :latest
  sha256 :no_check

  url "https://dl.getmushroom.app/Mushroom.dmg"
  name "Mushroom"
  desc "Pixel-art desktop pet that reminds you to drink water and take breaks"
  homepage "https://www.getmushroom.app/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Mushroom.app"

  zap trash: [
    "~/Library/Application Scripts/com.qubit.shroomy.app.share",
    "~/Library/Application Support/com.qubit.shroomy.app",
    "~/Library/Caches/com.qubit.shroomy.app",
    "~/Library/Containers/com.qubit.shroomy.app.share",
    "~/Library/HTTPStorages/com.qubit.shroomy.app",
    "~/Library/Preferences/com.qubit.shroomy.app.plist",
  ]
end

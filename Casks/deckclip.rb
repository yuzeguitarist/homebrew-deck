cask "deckclip" do
  version "1.4.4"
  sha256 "b89d87ac4f1f1effcb3d6942246cd2efb00d3e07b0772af0da4482c19efe7473"

  url "https://github.com/yuzeguitarist/Deck/releases/download/v#{version}/Deck.dmg",
      verified: "github.com/yuzeguitarist/Deck/"
  name "Deck"
  desc "Privacy-first clipboard manager"
  homepage "https://deckclip.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Deck.app"

  zap trash: [
    "~/Library/Application Scripts/com.yuzeguitar.Deck",
    "~/Library/Application Support/Deck",
    "~/Library/HTTPStorages/com.yuzeguitar.Deck",
    "~/Library/HTTPStorages/com.yuzeguitar.Deck.binarycookies",
    "~/Library/HTTPStorages/Deck",
    "~/Library/Preferences/com.yuzeguitar.Deck.plist",
  ]
end

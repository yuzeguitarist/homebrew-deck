cask "deckclip" do
  version "1.4.3"
  sha256 "a9f3b89c8aba70934d80373487d1820bb1e24ff5ea2748d37feb6d3743438678"

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

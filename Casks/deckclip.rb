cask "deckclip" do
  version "1.4.5"
  sha256 "53988ca10646c9cc2289e8712940778a886fcc0878da0902d6c937009eb6523b"

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
  depends_on macos: :sonoma

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
